import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../apis/login_apis.dart';
import '../../components/myTree/my_tree.dart';
import '../../routers/router_table.dart';
import '../../utils/http_request.dart';

class TenantList extends StatefulWidget {
  const TenantList({Key? key}) : super(key: key);

  @override
  State<TenantList> createState() => _TenantListState();
}

class _TenantListState extends State<TenantList> {
  List? tenantList;
  Widget tenantListTree = Container();
  Map<String, dynamic>? selectedTenant;
  // List tenantList = [
  //   {
  //     'name': '1-1',
  //     'tenantName': '1-1',
  //     'tenantCode': '1-1',
  //     'children': [
  //       {
  //         'name': '1-1-1',
  //         'tenantName': '1-1-1',
  //         'tenantCode': '1-1-1',
  //         'children': [],
  //       },
  //       {
  //         'name': '1-1-2',
  //         'tenantName': '1-1-2',
  //         'tenantCode': '1-1-2',
  //         'children': [
  //           {
  //             'name': '1-1-2-1',
  //             'tenantName': '1-1-2-1',
  //             'tenantCode': '1-1-2-1',
  //             'children': [],
  //           },
  //           {
  //             'name': '1-1-2-2',
  //             'tenantName': '1-1-2-2',
  //             'tenantCode': '1-1-2-2',
  //             'children': [],
  //           },
  //         ],
  //       },
  //       {
  //         'name': '1-1-3',
  //         'tenantName': '1-1-3',
  //         'tenantCode': '1-1-3',
  //         'children': [],
  //       }
  //     ],
  //   },
  //   {
  //     'name': '1-2',
  //     'tenantName': '1-2',
  //     'tenantCode': '1-2',
  //     'children': [
  //       {
  //         'name': '1-2-1',
  //         'tenantName': '1-2-1',
  //         'tenantCode': '1-2-1',
  //         'children': [],
  //       },
  //       {
  //         'name': '1-2-2',
  //         'tenantName': '1-2-2',
  //         'tenantCode': '1-2-2',
  //         'children': [],
  //       },
  //     ],
  //   },
  //   {
  //     'name': '1-3',
  //     'tenantName': '1-3',
  //     'tenantCode': '1-3',
  //     'children': [],
  //   }
  // ];

  @override
  initState() {
    super.initState();
    Node.currentSelectedNode = null;
    _getTenantList();
  }

  void _getTenantList() {
    requestUnified(() async {
      List tenantListResponse = await requestClient.get(LoginApis.tenantList);
      setState(() {
        tenantList = tenantListResponse;
        tenantListTree = MyTree(
          organs: tenantList ?? [],
          organKey: '',
          memberKey: '',
          organNameKey: 'tenantName',
          memberNameKey: '',
          childrenKey: 'children',
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('选择单位'),
          centerTitle: true,
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: tenantListTree,
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
                          padding: EdgeInsets.all(16.0),
                          child: Text("确 定"),
                        ),
                        onPressed: () {
                          if (Node.currentSelectedNode != null) {
                            Map<String, dynamic> selectedTenant =
                                Node.currentSelectedNode!.object;
                            RouterManager.router?.pop(context, selectedTenant);
                          } else {
                            EasyLoading.showInfo('请选择单位');
                          }
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
      onWillPop: () async {
        return true;
      },
    );
  }
}
