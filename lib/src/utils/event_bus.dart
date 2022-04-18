import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class AddUploadingListData {
  AddUploadingListData(this.data);
  Map<String, dynamic> data;
}

class AddDownloadingListData {
  AddDownloadingListData(this.data);
  Map<String, dynamic> data;
}

class RefreshFileList {
  RefreshFileList(this.type);
  int type;
}

class BuildPreview {
  BuildPreview(this.type);
  String type;
}

class PreviewCurrentFileList {
  PreviewCurrentFileList(this.data);
  List data;
}
