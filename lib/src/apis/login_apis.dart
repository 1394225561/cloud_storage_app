class LoginApis {
  static final Map<String, dynamic> generateBase64 = {
    'app': 'cloudStorage',
    'path': '/api/captcha/generateBase64',
    'method': 'get'
  };
  static final Map<String, dynamic> checkCode = {
    'path': '/spacex/captcha/validate',
    'app': 'cloudStorage',
    'method': 'get',
    'dataType': 'json',
    'timeout': 5000,
  };
  static final Map<String, dynamic> login = {
    'path': '/spacex/login?ajax=true',
    'app': 'cloudStorage',
    'method': 'post',
    'dataType': 'application/x-www-form-urlencoded',
    'timeout': 5000,
  };
  static final Map<String, dynamic> logout = {
    'path': '/spacex/logout',
    'app': 'cloudStorage',
    'method': 'post',
    'dataType': 'json'
  };
  static final Map<String, dynamic> tenantList = {
    'path': '/api/tenant/list',
    'app': 'cloudStorage',
    'method': 'get'
  };
}
