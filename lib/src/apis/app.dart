class AppApis {
  static final Map<String, dynamic> sysConfig = {
    'app': 'cloudStorage',
    'path': '/api/v2/defaultConfig/system/get',
    'method': 'get'
  };
  static final Map<String, dynamic> getPermissionBtn = {
    'app': 'cloudStorage',
    'path': '/api/menu/pagePermissions',
    'method': 'get'
  };
  static final Map<String, dynamic> getAppVersion = {
    'path': '/api/clientVersion/get',
    'app': 'cloudStorage',
    'method': 'get',
    'dataType': 'json',
  };
}
