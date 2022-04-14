class DownloadApis {
  static final Map<String, dynamic> assignedShareDownload = {
    'path': '/api/v2/sharing/receiveFile/download',
    'app': 'cloudStorage',
    'method': 'get'
  };
  static final Map<String, dynamic> unifileD = {
    'path': '/api/file/download/single',
    'app': 'cloudStorage',
    'method': 'get',
    'dataType': 'json',
  };
  static final Map<String, dynamic> multifilesD = {
    'path': '/api/file/download/multi',
    'app': 'cloudStorage',
    'method': 'get',
    'dataType': 'json',
  };
}
