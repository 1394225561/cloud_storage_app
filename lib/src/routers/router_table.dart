import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import '../views/login/tenant_list.dart';
import '/src/views/test/dynamic_detail.dart';

import '/configuration.dart';
import '/src/views/not_found/not_found.dart';
import '/src/views/permission_denied/permission_denied.dart';
import '/src/views/login/login.dart';
import '/src/views/home/app.dart';

// 原生导航器 Navigator
class RouterTable {
  static String dynamicDetailPath = 'detail';

  static String loginPath = 'login';
  static String homePath = '/';
  static String notFoundPath = '404';

  static Map<String, dynamic> envConfiguration =
      EnvConfig.getEnvConfig(Env.development);
  // EnvConfig.getEnvConfig(Env.product);

  static Map<String, WidgetBuilder> routeTables = {
    // dynamicDetailPath: (context) => const DynamicDetail(),
    //404页面
    notFoundPath: (context) => const NotFound(),
    //登录
    loginPath: (context) => const LoginPage(),
    //首页
    homePath: (context) => envConfiguration['region'] == 'JIANGSU'
        ? const AppHomePage()
        : const LoginPage(),
  };

  ///路由拦截
  static Route onGenerateRoute<T extends Object>(RouteSettings settings) {
    RouteSettings newSettings = settings;
    if (settings.arguments != null) {
      var arguments = settings.arguments as Map<String, dynamic>;
      arguments['globalParam'] = 'test';
      newSettings =
          settings.copyWith(name: settings.name, arguments: arguments);
    }
    print('路由拦截 newSettings :>>');
    print(newSettings);

    return CupertinoPageRoute<T>(
      settings: newSettings,
      builder: (context) {
        String? name = settings.name;
        if (routeTables[name] == null) {
          name = notFoundPath;
        }

        Widget widget = routeTables[name]!(context);

        return widget;
      },
    );
  }
}

// fluro
class RouterManager {
  // static FluroRouter router = FluroRouter();
  static PermissionRouter? router;

  // 定义路由path
  static String notFoundPath = '/404';
  // 定义路由handler
  static Handler notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const NotFound();
  });

  static String permissionDeniedPath = '/403';
  static Handler permissionDeniedHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const PermissionDenied();
  });

  static String loginPath = '/login';
  static Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const LoginPage();
  });

  static String tenantListPath = '/tenantList';
  static Handler tenantListHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const TenantList();
  });

  static String homePath = '/';
  static Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const AppHomePage();
  });

  static String dynamicPath = '/detail';
  static String dynamicDetailPath = '$dynamicPath/:id';
  static Handler dynamicDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return DynamicDetail(routeParams: params);
  });

  static void initRouter() {
    if (router == null) {
      router = PermissionRouter();
      defineRoutes();
      initWhiteList();
    }
  }

  // 注册路由
  static void defineRoutes() {
    router?.notFoundHandler = notFoundHandler;
    router?.define(
      permissionDeniedPath,
      handler: permissionDeniedHandler,
    );
    router?.define(
      loginPath,
      handler: loginHandler,
    );
    router?.define(
      tenantListPath,
      handler: tenantListHandler,
    );
    router?.define(
      homePath,
      handler: homeHandler,
    );
    router?.define(
      dynamicDetailPath,
      handler: dynamicDetailHandler,
      transitionType: TransitionType.inFromRight,
    );
  }

  static void initWhiteList() {
    router?.whiteList = [
      dynamicPath,
      dynamicDetailPath,
      notFoundPath,
      permissionDeniedPath,
      loginPath,
      tenantListPath,
      homePath,
    ];
  }
}

class PermissionRouter extends FluroRouter {
  List<String>? _whiteList;
  set whiteList(value) => _whiteList = value;

  final String _permissionDeniedPath = RouterManager.permissionDeniedPath;

  @override
  Future navigateTo(
    BuildContext context,
    String path, {
    bool replace = false,
    bool clearStack = false,
    bool maintainState = true,
    bool rootNavigator = false,
    TransitionType? transition,
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionBuilder,
    RouteSettings? routeSettings,
  }) {
    String pathToNavigate = path;
    AppRouteMatch? routeMatched = match(path);
    String? routePathMatched = routeMatched?.route.route;
    if (routePathMatched != null) {
      //设置了白名单且当前路由不在白名单内，更改路由路径到授权被拒绝页面
      if (_whiteList != null && !_whiteList!.contains(routePathMatched)) {
        pathToNavigate = _permissionDeniedPath;
      }
    }
    return super.navigateTo(context, pathToNavigate,
        replace: replace,
        clearStack: clearStack,
        maintainState: maintainState,
        rootNavigator: rootNavigator,
        transition: transition,
        transitionDuration: transitionDuration,
        transitionBuilder: transitionBuilder,
        routeSettings: routeSettings);
  }
}
