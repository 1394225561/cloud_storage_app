import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_proxy/shelf_proxy.dart';

Future<void> main() async {
  // String baseUrl = "http://172.16.5.137:8080";
  String baseUrl = "http://172.16.6.139:50375";
  // String baseUrl = "http://172.16.5.146:8080";

  /// 输入你想要请求的api网关
  var reqHandle = proxyHandler(baseUrl);

  /// 绑定本地端口，4500，转发到真正的服务器中
  var server = await shelf_io.serve(reqHandle, 'localhost', 4500);

  // 设置请求策略，允许所有
  server.defaultResponseHeaders.add('Access-Control-Allow-Origin', '*');
  server.defaultResponseHeaders.add('Access-Control-Allow-Credentials', true);
  print('Serving at http://${server.address.host}:${server.port}');
}
