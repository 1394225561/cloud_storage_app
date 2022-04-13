class FileListState {
  late Map<String, dynamic> listDataResponse;
  late List listData;
  late bool isShowCheckbox;
  late bool isSelectedAll;
  late List selectedFiles;
  late bool isRootPath;
  late String type;
  late List breadCrumbs;

  FileListState({
    required this.listDataResponse,
    required this.listData,
    this.isShowCheckbox = false,
    this.isSelectedAll = false,
    required this.selectedFiles,
    this.isRootPath = true,
    this.type = '',
    required this.breadCrumbs,
  });
}
