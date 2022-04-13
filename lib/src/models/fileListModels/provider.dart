import 'package:flutter/material.dart';

import 'state.dart';

class FileListProvider extends ChangeNotifier {
  final state = FileListState(
    listDataResponse: {},
    listData: [],
    selectedFiles: [],
    breadCrumbs: [],
  );

  void assigningType(String type) {
    state.type = type;
  }

  void resetSelectedFiles() {
    state.selectedFiles = [];
    state.isSelectedAll = false;
  }

  void assigningListData(Map<String, dynamic> data) {
    state.listDataResponse = data;
    state.listData = data['content'];
    notifyListeners();
  }

  void changeShowCheckbox(bool isShow) {
    state.isShowCheckbox = isShow;
    notifyListeners();
  }

  void changeIsSelectedAll() {
    state.isSelectedAll = !state.isSelectedAll;
    if (state.isSelectedAll) {
      state.selectedFiles = state.listData.map((file) {
        file['selected'] = true;
        return file;
      }).toList();
    } else {
      state.selectedFiles = [];
      state.listData = state.listData.map((file) {
        file['selected'] = false;
        return file;
      }).toList();
    }
    checkSelectAllState();
  }

  void singleCheckHandler({
    actionType,
    selectedFile,
  }) {
    if (actionType == 'add') {
      state.selectedFiles.add(selectedFile);
    } else {
      state.selectedFiles.removeWhere((file) {
        return file['id'] == selectedFile['id'];
      });
    }
    checkSelectAllState();
  }

  void checkSelectAllState() {
    if (state.selectedFiles.length == state.listData.length) {
      state.isSelectedAll = true;
    } else {
      state.isSelectedAll = false;
    }
    // print('当前列表所有文件');
    // print(state.listData);
    // print(state.listData.length);
    print('当前选中的文件');
    print(state.selectedFiles);
    print(state.selectedFiles.length);
    notifyListeners();
  }

  void changeFileOptionBarDisplay({currentFile}) {
    Map<String, dynamic> target = state.listData.firstWhere((file) {
      return file['id'] == currentFile['id'];
    });
    target['isShowOptionBar'] =
        target['isShowOptionBar'] == null ? true : !target['isShowOptionBar'];
  }

  void breadCrumbsHandler(String actionType, Map<String, dynamic> item) {
    if (actionType == 'add') {
      state.breadCrumbs.add(item);
    } else {
      int index = state.breadCrumbs.indexOf(item);
      state.breadCrumbs = state.breadCrumbs.sublist(0, index + 1);
    }
    state.isRootPath = state.breadCrumbs.length <= 1;
  }
}
