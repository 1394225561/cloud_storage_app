import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'src/utils/navigator_global_key.dart';
import 'src/routers/router_table.dart';
import 'configuration.dart';
import 'src/utils/http_request.dart';

// 开发环境
Map<String, dynamic> envConfiguration = EnvConfig.getEnvConfig(Env.development);

void main() async {
  // debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();

  RequestConfig.baseUrl = envConfiguration['baseUrl'];

  requestClient = RequestClient();

  // 原生事件
  // TODO: web端开发调试时 需要注释下行 否则会报错。模拟器调试 放开注释。
  await requestClient.initCookieManager();

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
