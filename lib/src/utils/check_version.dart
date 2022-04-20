import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:open_file/open_file.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../apis/app.dart';
import 'event_bus.dart';
import 'http_request.dart';
import 'tools.dart';

class CheckVersion {
  bool isAndroid;
  BuildContext context;
  CheckVersion(this.isAndroid, this.context);

  void checkVersionCode() async {
    String updateUrl;
    String serviceVersion;
    int serviceVersionCode;
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    // String buildSignature = packageInfo.buildSignature;
    print(appName);
    print(packageName);
    print(version);
    print(buildNumber);
    // print(buildSignature);
    // Future.delayed(const Duration(seconds: 3), () {
    //   EasyLoading.showToast(appName + '、' + packageName + '、' + version);
    // });
    requestUnified(() async {
      Map<String, dynamic> getAppVersionResponse = await requestClient.get(
        AppApis.getAppVersion,
        queryParameters: {
          'clientType': isAndroid ? 1 : 2,
        },
      );
      print('getAppVersionResponse');
      print(getAppVersionResponse);
      updateUrl =
          '/api/file/download/single?fileId=E98FF2952F0A4076801B63F070061D18';
      updateUrl = getAppVersionResponse['updateUrl'];
      serviceVersion = getAppVersionResponse['versionName'];
      serviceVersionCode = getAppVersionResponse['versionCode'];
      String fileName = '${appName}v$serviceVersion.apk';

      // showNewVersionAppDialog(updateUrl, fileName);

      if (double.parse(serviceVersion.substring(0, 3)) >
              double.parse(version.substring(0, 3)) ||
          serviceVersionCode > double.parse(buildNumber)) {
        // 有新版本
        if (isAndroid) {
          showNewVersionAppDialog(updateUrl, fileName);
        } else {
          // 跳转到AppStore
        }
      }
    });
  }

  void showNewVersionAppDialog(
    String url,
    String fileName,
  ) {
    String contentText = '新版本$fileName可安装';
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: const <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                  child: Text("发现新版本"))
            ],
          ),
          content: Text(contentText),
          actions: <Widget>[
            TextButton(
              child: const Text('下次再说'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('立即更新'),
              onPressed: () {
                Navigator.pop(context);
                doUpdate(url, fileName);
              },
            )
          ],
        );
      },
    );
  }

  /// 执行更新操作
  doUpdate(
    String url,
    String fileName,
  ) async {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: const <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                  child: Text("下载新版本"))
            ],
          ),
          content: const ApkDownloadProgress(),
        );
      },
    );
    getApk(url, fileName);
  }

  void getApk(
    String url,
    String fileName,
  ) async {
    bool isPermiss = await Tools.checkPermissFunction();
    if (isPermiss) {
      ///手机储存目录
      String savePath = await Tools.apkLocalPath();
      String saveUrl = "$savePath${Platform.pathSeparator}$fileName";
      Map<String, dynamic> data = {'saveUrl': saveUrl};

      requestUnified(() async {
        await requestClient.dioDownload(
          url,
          saveUrl,
          data: data,
          progressCallback: apkDownloadProgressCallback,
        );
      }, isShowLoading: false);
    } else {
      ///提示用户请同意权限申请
    }
  }

  void apkDownloadProgressCallback(int count, int total,
      Map<String, dynamic> data, CancelToken cancelToken) {
    data['count'] = Tools.transformSize(count);
    data['total'] = Tools.transformSize(total);
    if (total != -1) {
      double percentage = count * 100 / total;
      String percentageFixed = percentage.toStringAsFixed(2);
      data['stateText'] = percentageFixed + '%';
      eventBus.fire(ApkDownload(data));
      if (percentage >= 100) {
        // TODO:退出登录
        Navigator.of(context).pop();
        installApk(data['saveUrl']);
      }
    }
  }

  /// 安装apk
  Future<void> installApk(path) async {
    print('安装:$path');
    await OpenFile.open(path, type: 'application/vnd.android.package-archive');
  }
}

class ApkDownloadProgress extends StatefulWidget {
  const ApkDownloadProgress({Key? key}) : super(key: key);

  @override
  State<ApkDownloadProgress> createState() => _ApkDownloadProgressState();
}

class _ApkDownloadProgressState extends State<ApkDownloadProgress> {
  late StreamSubscription<ApkDownload> _apkDownloadProgressSubscription;
  Map<String, dynamic> apkFile = {
    'stateText': '开始下载...',
  };

  @override
  initState() {
    super.initState();
    _apkDownloadProgressSubscription =
        eventBus.on<ApkDownload>().listen((event) {
      setState(() {
        apkFile = event.data;
      });
    });
  }

  @override
  void dispose() {
    _apkDownloadProgressSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        children: [
          apkFile['count'] == null
              ? const SizedBox()
              : Text('${apkFile['count']}/${apkFile['total']}'),
          const SizedBox(height: 7),
          Text('${apkFile['stateText']}')
        ],
      ),
    );
  }
}
