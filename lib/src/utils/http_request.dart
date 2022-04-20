import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';

import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

import '/src/utils/navigator_global_key.dart';
import '../routers/router_table.dart';
import '/src/serialization/api_response.dart';
import 'global_constant.dart';

late RequestClient requestClient;
late PersistCookieJar? cookieJarCache;

class RequestConfig {
  static const connectTimeout = 15000;
  static const successCode = 200;
  static String baseUrl = '';
}

// 顶层request 防止多个请求相互依赖出现嵌套 且实现统一异常处理
// 当 block 包裹的代码中任一个请求错误则不会继续向下执行。
Future requestUnified(
  Function() block, {
  bool isShowLoading = true,
  String loadingText = '请稍等...',
  bool Function(ApiException)? onError,
}) async {
  try {
    await loading(
      block,
      isShowLoading: isShowLoading,
      loadingText: loadingText,
    );
  } catch (e) {
    print('requestUnified error');
    print(e);
    handleException(ApiException.from(e), onError: onError);
  }
  return;
}

Future loading(
  Function block, {
  bool isShowLoading = true,
  String loadingText = '请稍等...',
}) async {
  if (isShowLoading) {
    showLoading(loadingText);
  }
  try {
    await block();
  } catch (e) {
    rethrow;
  } finally {
    dismissLoading();
  }
  return;
}

void showLoading(String loadingText) {
  EasyLoading.show(status: loadingText);
}

void dismissLoading() {
  EasyLoading.dismiss();
}

bool handleException(
  ApiException exception, {
  bool Function(ApiException)? onError,
}) {
  if (onError?.call(exception) == true) {
    return true;
  }

  if (exception.code == '401' || exception.code == '400sec-core-301') {
    var context =
        NavigatorGlobalKey.navigatorKey.currentState!.overlay!.context;
    Future.delayed(const Duration(microseconds: 0), () {
      RouterManager.router?.navigateTo(
        context,
        RouterManager.loginPath,
        clearStack: true,
      );
    });
    // return true;
  }
  EasyLoading.showInfo(exception.message ?? ApiException.unknownException);

  return false;
}

// 单个DIO请求封装类
class RequestClient {
  late Dio _dio;

  RequestClient() {
    BaseOptions options = BaseOptions(
      baseUrl: RequestConfig.baseUrl,
      connectTimeout: RequestConfig.connectTimeout,
      headers: {
        'X-Requested-With': 'XMLHttpRequest',
        'Accept': 'application/json, text/plain, */*',
        'CS-PLATFORM': 'web',
        'CS-NETWORKENV': 'inner',
      },
    );
    _dio = Dio(options);

    // _dio = DioForBrowser(options);
    // var adapter = BrowserHttpClientAdapter();
    // adapter.withCredentials = true;
    // _dio.httpClientAdapter = adapter;

    // TODO: 自定义拦截器 web端调试时 需要注释掉
    _dio.interceptors.add(myInterceptor(_dio));
    // 自定义cookie管理
    // _dio.interceptors.add(CookieManager.instance);
  }

  Future initCookieManager() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    PersistCookieJar cookieJar =
        PersistCookieJar(storage: FileStorage(appDocPath));
    _dio.interceptors.add(CookieManager(cookieJar));
    cookieJarCache = cookieJar;
    return 'finish';
  }

  Future get(
    Map<String, dynamic> apis, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool Function(ApiException)? onError,
  }) {
    return request(
      apis,
      queryParameters: queryParameters,
      headers: headers,
      onError: onError,
    );
  }

  Future post(
    Map<String, dynamic> apis, {
    Map<String, dynamic>? queryParameters,
    data,
    Map<String, dynamic>? headers,
    bool Function(ApiException)? onError,
  }) {
    return request(apis,
        method: "POST",
        queryParameters: queryParameters,
        data: data,
        headers: headers,
        onError: onError);
  }

  Future request(
    Map<String, dynamic> apis, {
    String method = "get",
    Map<String, dynamic>? queryParameters,
    data,
    Map<String, dynamic>? headers,
    bool Function(ApiException)? onError,
  }) async {
    try {
      ResponseType responseType = ResponseType.json;
      String contentType = 'json';

      if (apis['responseType'] == 'blob') {
        responseType = ResponseType.bytes;
      }

      if (apis['dataType'] != null) {
        contentType = apis['dataType'];
      }

      Options options = Options()
        ..method = method
        ..contentType = contentType
        ..responseType = responseType
        ..headers = headers;

      data = _convertRequestData(data);

      // response 请求的返回体
      // response.data 后端封装的接口返回数据
      // response.data 请求500时 包含错误信息 定义异常信息序列化类ApiResponse
      // response.data 请求200时 是需要实体类序列化处理的数据 直接return 因为返回数据格式不确定 所以需要针对性构造序列化类
      // response.statusCode 请求状态码 需要对 400 401 500 做报错信息展示处理
      // 400：展示response.data.errorMessage
      // 401：跳转登录页
      // 500：展示response.data.message || response.data.errorMessage
      Response response = await _dio.request(
        apis['path'],
        queryParameters: queryParameters,
        data: data,
        options: options,
      );

      return _handleResponse(response);
    } catch (e) {
      var exception = ApiException.from(e);
      if (onError?.call(exception) != true) {
        throw exception;
      }
    }

    return null;
  }

  _convertRequestData(data) {
    if (data != null) {
      data = jsonDecode(jsonEncode(data));
    }
    return data;
  }

  ///请求响应内容处理
  _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw response;
    }
  }

  /// 文件上传
  /// [url] - 上传的地址
  /// [filePath] - 本地文件路径
  /// [fileStream] - Stream<List<int>> Stream方式读取的文件数据
  /// [length] - 流的长度 dio以Stream方式创建MultipartFile时的必须参数
  /// [progressCallback] - 上传进度变化时的回调，用来实现进度条
  /// [data] - 上传列表 文件Map结构 如下
  /// Map<String, dynamic> [data] = {
  ///   'file': 文件实例 用于分片读取文件,
  ///   'pickerType': 获取文件的方式,
  ///   'name': 文件名,
  ///   'chunk': 当前分片,
  ///   'chunks': 总分片数,
  ///   'type': mime type,
  ///   'size': 文件大小,
  ///   'dirId': 文件上传目录id,
  ///   'guid': 文件唯一标识,
  ///   'uploadType': 上传类型 ''普通上传 'newVersion'上传新版本,
  ///   'chunkSize': 分片大小,
  ///   'md5': 文件md5码,
  ///   'fileCategory': 文件上传目录类别 1个人文件 2共享文件 4同步文件,
  ///   'filePath': 文件的设备路径,
  ///   'creationTime': 文件加入队列的时间戳,
  ///   'state': 上传状态code,
  ///     waiting加入队列（等待上传）
  ///     uploading上传中（百分比）
  ///     pausing暂停状态（暂停）
  ///     completed上传完成（100%）
  ///     判断handleStatus处理状态
  ///       0完成 1审核中 2待同步内网 （新增文本用 3涉密 4涉敏）
  ///   'stateText': 上传状态文描,
  ///   'cancelToken': CancelToken实例 用于暂停,
  ///   'isLastChunk': 标识 用于判断当前请求是否为最后一片,
  /// };
  Future dioUpload(
    String url, {
    required String filePath,
    required Stream<List<int>> fileStream,
    required int length,
    required String filename,
    required String? mimeType,
    required Map<String, dynamic> data,
    required Function progressCallback,
    Map<String, String> headers = const {},
    bool Function(ApiException)? onError,
  }) async {
    try {
      Map<String, dynamic> requestData = Map.of({
        'name': data['name'],
        'chunk': data['chunk'],
        'chunks': data['chunks'] > 1 ? data['chunks'] : null,
        'type': data['type'],
        'size': data['size'],
        'dirId': data['dirId'],
        'guid': data['guid'],
        'uploadType': data['uploadType'],
        'chunkSize': data['chunkSize'],
        'md5': data['md5'],
        'fileCategory': data['fileCategory'],
      });
      List<String>? mimeTypeList = mimeType?.split('/');
      requestData['file'] = MultipartFile(
        fileStream,
        length,
        filename: filename,
        contentType: mimeTypeList != null
            ? MediaType(mimeTypeList[0], mimeTypeList[1])
            : null,
      );
      FormData formData = FormData.fromMap(requestData);
      CancelToken cancelToken = CancelToken();
      data['cancelToken'] = cancelToken;
      Response resp = await _dio.post(
        url,
        data: formData,
        options: Options(headers: headers),
        cancelToken: cancelToken,
        onSendProgress: (int count, int total) {
          progressCallback(count, total, data, cancelToken);
        },
      );

      return _handleResponse(resp);
    } catch (e) {
      var exception = ApiException.from(e);
      if (onError?.call(exception) != true) {
        throw exception;
      }
    }

    return null;
  }

  /// 文件下载
  /// [url] - 下载文件的链接地址
  /// [saveUrl] - 保存文件的本地地址
  /// [progressCallback] - 下载进度变化时的回调，用来实现进度条
  /// [data] - 下载列表 文件Map结构 如下
  ///  Map<String, dynamic> [data] = {
  ///    'url': 下载文件的链接地址,
  ///    'downloadType': 下载文件的所属目录类别,
  ///    'isSingle': 是否为单文件下载,
  ///    'fileId': 下载文件的id字符串集,
  ///    'shareId': 他人分享的id,
  ///    'name': 文件名,
  ///    'guid': 唯一标识,
  ///    'creationTime': 文件加入队列的时间戳,
  ///    'state': 下载状态code,
  ///       waiting加入队列（等待下载）
  ///       downloading下载中（进度）
  ///       pausing暂停状态（暂停）
  ///       completed上传完成（100%）
  ///    'stateText': 下载状态文描,
  ///    'count': 已接收的文件字节数,
  ///    'total': 文件的总字节数（批量下载时为-1 未知）,
  ///    'chunk': null,
  ///    'chunks': null,
  ///    'cancelToken': CancelToken实例 用于暂停,
  ///  };
  Future dioDownload(
    String url,
    String saveUrl, {
    required Map<String, dynamic> data,
    required Function progressCallback,
    Map<String, String> headers = const {},
    bool Function(ApiException)? onError,
  }) async {
    try {
      CancelToken cancelToken = CancelToken();
      data['cancelToken'] = cancelToken;
      Response resp = await _dio.download(
        url,
        saveUrl,
        cancelToken: cancelToken,
        onReceiveProgress: (int count, int total) {
          progressCallback(count, total, data, cancelToken);
        },
      );

      return _handleResponse(resp);
    } catch (e) {
      var exception = ApiException.from(e);
      if (onError?.call(exception) != true) {
        throw exception;
      }
    }

    return null;
  }
}

// 拦截器
InterceptorsWrapper myInterceptor(dio) {
  String getCookies(List<Cookie> cookies) {
    return cookies.map((cookie) => '${cookie.name}=${cookie.value}').join('; ');
  }

  return InterceptorsWrapper(
    onRequest: (options, handler) {
      // dio.lock();
      print('DIO拦截器 请求发起：' + options.path);
      // options.extra["withCredentials"] = true;

      ///token from cache
      // var token = Cache.getToken();
      // options.headers["Authorization"] = "Basic $token";
      // dio.unlock();

      cookieJarCache?.loadForRequest(options.uri).then((cookies) {
        String cookie = getCookies(cookies);
        if (cookie.isNotEmpty) {
          GlobalConstant.cookie = cookie;
        }
      });

      return handler.next(options);
    },
    onResponse: (response, handler) {
      handler.next(response);
    },
    onError: (DioError e, handler) {
      print('DIO拦截器 请求错误：' + e.message);
      return handler.next(e);
    },
  );
}

// class CookieManager extends Interceptor {
//   CookieManager._privateConstructor();
//   static final CookieManager _instance = CookieManager._privateConstructor();
//   static get instance => _instance;

//   late String? _cookie;

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     print('请求发起：' + options.path);
//     print('_cookie :>>');
//     print(_cookie);
//     options.headers['Cookie'] = _cookie;

//     return super.onRequest(options, handler);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     if (response.statusCode == 200) {
//       print('response.headers.map :>>');
//       print(response.headers.map);

//       List<String>? cookies = response.headers[HttpHeaders.setCookieHeader];
//       print('onResponse cookies :>>');
//       print(cookies);
//       print(cookies?.elementAt(0));

//       List<String>? splitedCookie = cookies?.elementAt(0).split(";");
//       String? newCookie = splitedCookie?.elementAt(0);
//       print(newCookie);
//       if (newCookie != null) {
//         _persistCookie(newCookie);
//       }
//     } else if (response.statusCode == 401) {
//       // _clearCookie();
//     }
//     super.onResponse(response, handler);
//   }

//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     print('请求错误：' + err.message);
//     super.onError(err, handler);
//   }

//   Future initCookie() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     _cookie = prefs.getString('cookie');
//     print('initCookie :>>');
//     print(_cookie);
//   }

//   void _persistCookie(String newCookie) async {
//     print('newCookie :>>');
//     print(_cookie);
//     print(newCookie);
//     if (_cookie != newCookie) {
//       _cookie = newCookie;
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       prefs.setString('cookie', _cookie ?? '');
//     }
//   }

//   // void _clearCookie() async {
//   //   _cookie = null;
//   //   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   prefs.remove('cookie');
//   // }
// }

// 异常处理
class ApiException implements Exception {
  static const unknownException = "未知错误";
  final String? message;
  final dynamic code;
  String? stackInfo;

  ApiException([this.code, this.message]);

  factory ApiException.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.cancel:
        return BadRequestException(-1, "请求取消");
      case DioErrorType.connectTimeout:
        return BadRequestException(-1, "连接超时");
      case DioErrorType.sendTimeout:
        return BadRequestException(-1, "请求超时");
      case DioErrorType.receiveTimeout:
        return BadRequestException(-1, "响应超时");
      case DioErrorType.response:
        try {
          /// 后端封装了错误信息
          ApiResponse apiResponse = ApiResponse.fromJson(
            error.response?.data,
          );
          if (apiResponse.code != null || apiResponse.errorCode != null) {
            return ApiException(
              apiResponse.code ?? apiResponse.errorCode,
              apiResponse.message ?? apiResponse.errorMessage,
            );
          }

          int? errCode = error.response?.statusCode;
          switch (errCode) {
            case 400:
              return BadRequestException(errCode, "请求语法错误");
            case 401:
              return UnauthorisedException(errCode!, "没有权限");
            case 403:
              return UnauthorisedException(errCode!, "服务器拒绝执行");
            case 404:
              return UnauthorisedException(errCode!, "无法连接服务器");
            case 405:
              return UnauthorisedException(errCode!, "请求方法被禁止");
            case 500:
              return UnauthorisedException(errCode!, "服务器内部错误");
            case 502:
              return UnauthorisedException(errCode!, "无效的请求");
            case 503:
              return UnauthorisedException(errCode!, "服务器异常");
            case 505:
              return UnauthorisedException(errCode!, "不支持HTTP协议请求");
            default:
              return ApiException(
                  errCode, error.response?.statusMessage ?? '未知的错误');
          }
        } on Exception catch (e) {
          return ApiException(-1, unknownException);
        }
      default:
        return ApiException(-1, error.message);
    }
  }

  factory ApiException.from(dynamic exception) {
    if (exception is DioError) {
      return ApiException.fromDioError(exception);
    }
    if (exception is ApiException) {
      return exception;
    } else {
      var apiException = ApiException(-1, unknownException);
      apiException.stackInfo = exception?.toString();
      return apiException;
    }
  }
}

/// 请求错误
class BadRequestException extends ApiException {
  BadRequestException([int? code, String? message]) : super(code, message);
}

/// 未认证异常
class UnauthorisedException extends ApiException {
  UnauthorisedException([int code = -1, String message = ''])
      : super(code, message);
}
