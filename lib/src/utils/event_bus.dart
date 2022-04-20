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

class ApkDownload {
  ApkDownload(this.data);
  Map<String, dynamic> data;
}
