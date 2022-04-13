import 'package:flutter/material.dart';

import '../../apis/app.dart';
import '../../utils/http_request.dart';
import '/src/components/myTopBar/my_top_bar.dart';
import 'login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String brandName = '';
  late Map<String, dynamic> sysConfig;

  @override
  void initState() {
    super.initState();
    requestUnified(() async {
      sysConfig = await requestClient.get(AppApis.sysConfig);
      setState(() {
        brandName = sysConfig['brandName'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          const MyTopBar(
            title: Text("登 录"),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  IconData(
                    0xe65e,
                    fontFamily: 'ypIcon',
                    matchTextDirection: true,
                  ),
                  size: 72,
                  color: Color.fromARGB(255, 228, 57, 60),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    brandName,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 228, 57, 60),
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Align(
                child: LoginForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
