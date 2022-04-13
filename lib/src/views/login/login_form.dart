import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../apis/login_apis.dart';
import '../../routers/router_table.dart';
import '../../utils/http_request.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _vcodeController = TextEditingController();

  Map<String, String> loginParam = {
    'userName': "",
    'password': "",
    'vcode': "",
  };

  bool isObscureText = true;
  String tenantLabelText = "请选择单位";
  String tenantCode = "";
  Widget? verificationCodeImg;

  @override
  initState() {
    super.initState();
    _getTenantList();
    _getVcode();
    _unameController.addListener(() {
      loginParam['userName'] = _unameController.text;
    });
    _pwdController.addListener(() {
      loginParam['password'] = _pwdController.text;
    });
    _vcodeController.addListener(() {
      loginParam['vcode'] = _vcodeController.text;
    });
  }

  void _getVcode() {
    requestUnified(() async {
      Map<String, dynamic> generateBase64Response =
          await requestClient.get(LoginApis.generateBase64);
      setState(() {
        verificationCodeImg = GestureDetector(
          child: Image.memory(
            base64.decode(generateBase64Response['base64Str']),
            height: 30, //设置高度
            // width: 70, //设置宽度
            fit: BoxFit.fill, //填充
            gaplessPlayback: true, //防止重绘
          ),
          onTap: () {
            _getVcode();
          },
        );
      });
    });
  }

  void _getTenantList() {
    requestUnified(() async {
      List tenantListResponse = await requestClient.get(LoginApis.tenantList);
      print('tenantListResponse :>>');
      print(tenantListResponse);
      Map<String, dynamic> firstTenant = tenantListResponse.elementAt(0);
      if (tenantListResponse.length == 1 &&
          firstTenant['children'].length == 0) {
        setState(() {
          tenantLabelText = firstTenant['tenantName'];
          tenantCode = firstTenant['tenantCode'];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  labelText: tenantLabelText,
                  // hintText: "请选择单位",
                  icon: const Icon(
                    IconData(
                      0xe645,
                      fontFamily: 'ypIcon',
                      matchTextDirection: true,
                    ),
                    size: 20,
                  ),
                ),
              ),
              onTap: () async {
                Map<String, dynamic>? arguments =
                    await RouterManager.router?.navigateTo(
                  context,
                  RouterManager.tenantListPath,
                );
                print(arguments);
                if (arguments != null) {
                  setState(() {
                    tenantLabelText = arguments['tenantName'];
                    tenantCode = arguments['tenantCode'];
                  });
                }
              },
            ),
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: const InputDecoration(
                labelText: "账号",
                hintText: "请输入账号",
                icon: Icon(
                  IconData(
                    0xe638,
                    fontFamily: 'ypIcon',
                    matchTextDirection: true,
                  ),
                  size: 20,
                ),
              ),
              // 校验用户名
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "请输入账号";
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: const InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                icon: Icon(
                  IconData(
                    0xe676,
                    fontFamily: 'ypIcon',
                    matchTextDirection: true,
                  ),
                  size: 20,
                ),
              ),
              obscureText: isObscureText,
              //校验密码
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "请输入密码";
              },
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _vcodeController,
                    decoration: const InputDecoration(
                      labelText: "验证码",
                      hintText: "请输入验证码",
                      icon: Icon(
                        IconData(
                          0xe671,
                          fontFamily: 'ypIcon',
                          matchTextDirection: true,
                        ),
                        size: 20,
                      ),
                    ),
                    //校验验证码
                    validator: (v) {
                      return v!.trim().isNotEmpty ? null : "请输入验证码";
                    },
                  ),
                ),
                Align(
                  child: verificationCodeImg,
                ),
              ],
            ),
            // 登录按钮
            Padding(
              padding: const EdgeInsets.only(
                top: 28.0,
                right: 10.0,
                bottom: 0,
                left: 10.0,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("登 录"),
                      ),
                      onPressed: () {
                        // 通过_formKey.currentState 获取FormState后，
                        // 调用validate()方法校验用户名密码是否合法，校验
                        // 通过后再提交数据。
                        if ((_formKey.currentState as FormState).validate()) {
                          requestUnified(() async {
                            var checkCodeResponse = await requestClient.get(
                                LoginApis.checkCode,
                                queryParameters: {'code': loginParam['vcode']},
                                onError: (e) {
                              _getVcode();
                              return true;
                            });
                            if (checkCodeResponse == false) {
                              EasyLoading.showInfo('验证码错误');
                              Future.delayed(
                                const Duration(
                                  seconds: 1,
                                ),
                                () {
                                  _getVcode();
                                },
                              );
                            } else {
                              Map<String, dynamic> loginResponse =
                                  await requestClient.post(
                                LoginApis.login,
                                data: {
                                  'username': loginParam['userName'],
                                  'password': loginParam['password'],
                                  'code': loginParam['vcode'],
                                },
                                headers: {'tenant': tenantCode},
                              );
                              if (loginResponse['success'] == true) {
                                RouterManager.router?.navigateTo(
                                  context,
                                  RouterManager.homePath,
                                  clearStack: true,
                                );
                              }
                            }
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
