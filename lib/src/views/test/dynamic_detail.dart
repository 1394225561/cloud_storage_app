import 'package:flutter/material.dart';

import '/src/routers/router_table.dart';

class DynamicDetail extends StatelessWidget {
  const DynamicDetail({Key? key, required this.routeParams}) : super(key: key);
  final Map<String, dynamic> routeParams;

  @override
  Widget build(BuildContext context) {
    print('dynamicDetailHandler routeParams :>>');
    print(routeParams);
    // Map<String, dynamic> routeParams =
    //     (ModalRoute.of(context)?.settings.arguments) as Map<String, dynamic>;
    // print('DynamicDetail routeParams :>>');
    // print(routeParams);

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('动态详情'),
        ),
        body: Center(
          child: Text("产品 ID: ${routeParams['id'][0]}"),
        ),
      ),
      onWillPop: () async {
        Map<String, dynamic> result = {'id': routeParams['id'][0]};
        RouterManager.router?.pop(context, result);
        // Navigator.of(context).pop({'id': routeParams['id']});
        return true;
      },
    );
  }
}
