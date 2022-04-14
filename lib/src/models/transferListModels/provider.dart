import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../apis/upload_apis.dart';
import '../../utils/event_bus.dart';
import '../../utils/global_constant.dart';
import '../../utils/http_request.dart';
import 'state.dart';

class TransferListProvider extends ChangeNotifier {
  final state = TransferListState(
    listData: [],
    uploadingListData: [],
    uploadCompletedListData: [],
    downloadingListData: [],
    downloadCompletedListData: [],
  );

  void addUploadingListData(Map<String, dynamic> data) {
    state.uploadingListData.add(data);
    readFile(data);
  }

  void readFile(Map<String, dynamic> data) {
    String pickerType = data['pickerType'];
    int start = data['chunk'] * data['chunkSize'];
    int end = min(data['size'], (data['chunk'] + 1) * data['chunkSize']);
    int currentLength = end - start;
    Stream<List<int>> chunkedStream;
    if (pickerType == 'filePicker') {
      File file = data['file'];
      chunkedStream = file.openRead(start, end);
    } else {
      XFile? file = data['file'];
      chunkedStream = file!.openRead(start, end);
    }
    if (data['chunk'] >= data['chunks'] - 1) {
      data['isLastChunk'] = true;
    }
    startUpload(data, chunkedStream, currentLength);
  }

  void startUpload(
    Map<String, dynamic> file,
    Stream<List<int>> chunkedStream,
    int currentLength,
  ) {
    if (file['chunk'] == 0) {
      EasyLoading.showInfo('开始上传...');
      file['state'] = 'uploading';
      file['stateText'] = '开始上传';
      notifyListeners();
    }
    requestUnified(() async {
      var fileUploadResponse = await requestClient.dioUpload(
        UploadApis.fileUpload['path'],
        filePath: file['filePath'],
        fileStream: chunkedStream,
        length: currentLength,
        filename: file['name'],
        mimeType: file['type'],
        data: file,
        progressCallback: progressCallback,
      );
      print('fileUploadResponse');
      print(fileUploadResponse);
      if (file['isLastChunk'] == null) {
        file['chunk'] = file['chunk'] + 1;
        readFile(file);
      } else {
        refreshFileList(file['fileCategory']);
      }
    }, isShowLoading: false);
  }

  void progressCallback(int count, int total, Map<String, dynamic> file,
      CancelToken cancelToken) {
    int counts = file['chunk'] * file['chunkSize'] + count;
    int totals = file['size'];
    double percentage = counts * 100 / totals;
    if (percentage >= 100) {
      completeFileUpload(file);
    } else {
      String percentageFixed = percentage.toStringAsFixed(2);
      file['stateText'] = percentageFixed + '%';
    }
    notifyListeners();
  }

  void completeFileUpload(Map<String, dynamic> data) {
    int currentFileIndex = state.uploadingListData.indexWhere((item) {
      return item['guid'] == data['guid'];
    });
    if (currentFileIndex != -1) {
      Map<String, dynamic> currentFile =
          state.uploadingListData.elementAt(currentFileIndex);
      currentFile['state'] = 'completed';
      currentFile['stateText'] = '完成';
      state.uploadCompletedListData.add(currentFile);
      state.uploadingListData.removeAt(currentFileIndex);
    }
  }

  void refreshFileList(int type) {
    eventBus.fire(RefreshFileList(type));
  }

  void addDownloadingListData(Map<String, dynamic> data) {
    state.downloadingListData.add(data);
    startDownload(data);
  }

  void startDownload(
    Map<String, dynamic> file,
  ) async {
    EasyLoading.showInfo('开始下载...');
    file['state'] = 'downloading';
    file['stateText'] = '开始下载';
    notifyListeners();

    /// 申请写文件权限
    bool isPermiss = await checkPermissFunction();
    if (isPermiss) {
      ///手机储存目录
      String savePath = await getPhoneLocalPath();
      String fileName = file['name'];
      String saveUrl = "$savePath/$fileName";
      print('saveUrl');
      print(saveUrl);

      ///参数一 文件的网络储存URL
      ///参数二 下载的本地目录文件
      ///参数三 下载进度监听
      requestUnified(() async {
        var fileDownloadResponse = await requestClient.dioDownload(
          file['url'],
          saveUrl,
          data: file,
          progressCallback: downloadProgressCallback,
        );
        print('fileDownloadResponse');
        print(fileDownloadResponse);
        if (file['total'] == -1) {
          completeFileDownload(file);
          notifyListeners();
        }
      }, isShowLoading: false);
    } else {
      ///提示用户请同意权限申请
    }
  }

  void downloadProgressCallback(int count, int total, Map<String, dynamic> file,
      CancelToken cancelToken) {
    if (total != -1) {
      double percentage = count * 100 / total;
      String percentageFixed = percentage.toStringAsFixed(2);
      file['stateText'] = percentageFixed + '%';
      if (percentage >= 100) {
        completeFileDownload(file);
      }
    }
    file['count'] = count;
    file['total'] = total;
    notifyListeners();
  }

  void completeFileDownload(Map<String, dynamic> data) {
    int currentFileIndex = state.downloadingListData.indexWhere((item) {
      return item['guid'] == data['guid'];
    });
    if (currentFileIndex != -1) {
      Map<String, dynamic> currentFile =
          state.downloadingListData.elementAt(currentFileIndex);
      currentFile['state'] = 'completed';
      currentFile['stateText'] = '完成';
      state.downloadCompletedListData.add(currentFile);
      state.downloadingListData.removeAt(currentFileIndex);
    }
  }

  ///PermissionGroup.storage 对应的是
  ///android 的外部存储 （External Storage）
  ///ios 的Documents` or `Downloads`
  checkPermissFunction() async {
    if (GlobalConstant.platform == TargetPlatform.android) {
      ///安卓平台中 checkPermissionStatus方法校验是否有储存卡的读写权限
      Permission permission = Permission.storage;
      PermissionStatus status = await permission.status;
      if (status != PermissionStatus.granted) {
        // 无权限那么 调用方法 requestPermissions 申请权限
        // 发起权限申请
        // 返回权限申请的状态 status
        PermissionStatus status = await permission.request();
        if (status.isPermanentlyDenied) {
          openAppSettings();
        } else {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  ///获取手机的存储目录路径
  ///getExternalStorageDirectory() 获取的是  android 的外部存储 （External Storage）
  ///  getApplicationDocumentsDirectory 获取的是 ios 的Documents` or `Downloads` 目录
  Future<String> getPhoneLocalPath() async {
    final directory = GlobalConstant.platform == TargetPlatform.android
        ? await getExternalStorageDirectory()
        : await getTemporaryDirectory();
    return directory!.path;
  }
}
