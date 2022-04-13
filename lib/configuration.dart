enum Env {
  product,
  development,
  local,
}

class EnvConfig {
  // static Env? env;
  static Map<String, dynamic> envConfiguration = {
    'baseUrl': '',
    'headerTitle': '法务云盘',
    'region': 'JIANGSU',
  };

  static Map<String, dynamic> getEnvConfig(Env env) {
    switch (env) {
      // 生产配置
      case Env.product:
        // envConfiguration['baseUrl'] = "http://172.16.5.137:8080";
        envConfiguration['baseUrl'] = "http://172.16.6.139:50375";
        // envConfiguration['baseUrl'] = "http://172.16.5.146:8080";
        return envConfiguration;
      // 开发配置
      case Env.development:
        // envConfiguration['baseUrl'] = "http://localhost:4500"; // 浏览器调试需要走本地代理
        // envConfiguration['baseUrl'] = "http://172.16.5.137:8080"; // 模拟器调试
        envConfiguration['baseUrl'] = "http://172.16.6.139:50375"; // 模拟器调试
        envConfiguration['headerTitle'] = "云盘开发环境";
        return envConfiguration;
      case Env.local:
        envConfiguration['baseUrl'] = "http://localhost/api";
        return envConfiguration;
      default:
        envConfiguration['baseUrl'] = "http://localhost/api-default";
        return envConfiguration;
    }
  }
}
