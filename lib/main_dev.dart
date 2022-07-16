import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'src/utils/navigator_global_key.dart';
import 'src/routers/router_table.dart';
import 'configuration.dart';
import 'src/utils/http_request.dart';

// 测试GitHub ssh
// 开发环境
Map<String, dynamic> envConfiguration = EnvConfig.getEnvConfig(Env.development);

void main() async {
  // debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();

  RequestConfig.baseUrl = envConfiguration['baseUrl'];

  // 原生事件
  // web端开发调试时 不能加载cookie manager拦截器 否则会报错。
  if (envConfiguration['platform'] == 'web') {
    requestClient = RequestClient(false);
  } else {
    requestClient = RequestClient(true);
    await requestClient.initCookieManager();
  }

  runApp(const MyApp());
  // CookieManager.instance.initCookie();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RouterManager.initRouter();

    return MaterialApp(
      title: envConfiguration['headerTitle'],
      onGenerateRoute: RouterManager.router?.generator,
      builder: EasyLoading.init(),
      navigatorKey: NavigatorGlobalKey.navigatorKey,
      // onGenerateRoute: RouterTable.onGenerateRoute,
      // initialRoute: RouterTable.homePath,
    );
  }
}
