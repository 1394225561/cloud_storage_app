import 'package:flutter/material.dart';

import '../../apis/login_apis.dart';
import '../../routers/router_table.dart';
import '../../utils/http_request.dart';

class InfoPage extends StatefulWidget {
  final String title;
  const InfoPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        bottom: 10.0,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 228, 57, 60),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text("退出登录"),
                        ),
                        onPressed: () {
                          // ignore: todo
                          // TODO:需增加二次确认
                          requestUnified(() async {
                            await requestClient.post(
                              LoginApis.logout,
                            );
                            RouterManager.router?.navigateTo(
                              context,
                              RouterManager.loginPath,
                              clearStack: true,
                            );
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
