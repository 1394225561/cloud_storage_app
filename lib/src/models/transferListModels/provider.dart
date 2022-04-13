import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../apis/upload.dart';
import '../../utils/event_bus.dart';
import '../../utils/http_request.dart';
import 'state.dart';

class TransferListProvider extends ChangeNotifier {
  final state = TransferListState(
    listData: [],
    uploadingListData: [],
    completedListData: [],
  );

  void addUploadingListData(Map<String, dynamic> data) {
    state.uploadingListData.add(data);
    startUpload(data);
  }

  void startUpload(Map<String, dynamic> file) {
    EasyLoading.show(status: '开始上传...');
    file['state'] = 'uploading';
    file['stateText'] = '上传中';
    requestUnified(() async {
      Map<String, dynamic> fileUploadResponse = await requestClient.dioUpload(
        UploadApis.fileUpload['path'],
        filePath: file['filePath'],
        filename: file['name'],
        mimeType: file['type'],
        data: file,
        progressCallback: progressCallback,
      );
      print(fileUploadResponse);
      refreshFileList(file['fileCategory']);
    }, isShowLoading: false);
    notifyListeners();
  }

  void progressCallback(int count, int total, Map<String, dynamic> file,
      CancelToken cancelToken) {
    print('progressCallback');
    print(count);
    print(total);
    double percentage = count * 100 / total;
    print(percentage);
    String percentageFixed = percentage.toStringAsFixed(2);
    file['stateText'] = percentageFixed + '%';
    if (percentage == 100) {
      completeFileUpload(file);
    }
    notifyListeners();
  }

  void completeFileUpload(Map<String, dynamic> data) {
    int currentFileIndex = state.uploadingListData.indexWhere((item) {
      return item['guid'] == data['guid'];
    });
    Map<String, dynamic> currentFile =
        state.uploadingListData.elementAt(currentFileIndex);
    currentFile['state'] = 'completed';
    currentFile['stateText'] = '完成';
    state.completedListData.add(currentFile);
    state.uploadingListData.removeAt(currentFileIndex);
  }

  void refreshFileList(int type) {
    eventBus.fire(RefreshFileList(type));
  }
}
