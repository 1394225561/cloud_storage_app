import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../iconfont/icon_font.dart';
import '../../models/fileListModels/provider.dart';

import '../../models/transferListModels/provider.dart';
import '../../utils/tools.dart';
import '/src/views/personal/personal.dart';
import '/src/views/share/share.dart';
import '/src/views/transfer/transfer.dart';
import '/src/views/info/info.dart';

import '/src/utils/http_request.dart';
import '/src/apis/user_apis.dart';
import '/src/apis/app.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: const MainPart(),
    );
  }
}

class MainPart extends StatefulWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  State<MainPart> createState() => _MainPartState();
}

class _MainPartState extends State<MainPart> {
  int _index = 0;

  // 底部导航栏List集合
  static final List<String> _titles = [
    '个人文件',
    '共享文件',
    '传输列表',
    '个人中心',
  ];
  final List<Widget> _homeWidgets = [
    ChangeNotifierProvider(
      create: (BuildContext context) => FileListProvider(),
      builder: (context, child) => PersonalPage(title: _titles[0]),
    ),
    ChangeNotifierProvider(
      create: (BuildContext context) => FileListProvider(),
      builder: (context, child) => SharePage(title: _titles[1]),
    ),
    ChangeNotifierProvider(
      create: (BuildContext context) => TransferListProvider(),
      builder: (context, child) => TransferPage(title: _titles[2]),
    ),
    // TransferPage(title: _titles[2]),
    InfoPage(title: _titles[3]),
  ];

  @override
  void initState() {
    super.initState();
    print('首页发起请求');
    requestUnified(() async {
      Map<String, dynamic> userDetailsResponse =
          await requestClient.post(UserApis.userDetails);
      Tools.userDetails = userDetailsResponse;
      Map<String, dynamic> sysConfigResponse =
          await requestClient.get(AppApis.sysConfig);
      Tools.sysConfig = sysConfigResponse;
      await Tools.getPermissionBtns();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
      _getBottomNavItem(
        _titles[0],
        const IconData(
          0xe644,
          fontFamily: 'ypIcon',
          matchTextDirection: true,
        ),
        0,
      ),
      _getBottomNavItem(
        _titles[1],
        const IconData(
          0xe645,
          fontFamily: 'ypIcon',
          matchTextDirection: true,
        ),
        1,
      ),
      _getBottomNavItem(
        _titles[2],
        const IconData(
          0xe66d,
          fontFamily: 'ypIcon',
          matchTextDirection: true,
        ),
        2,
      ),
      _getBottomNavItem(
        _titles[3],
        const IconData(
          0xe638,
          fontFamily: 'ypIcon',
          matchTextDirection: true,
        ),
        3,
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: _homeWidgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: _onBottomNagigationBarTapped,
        items: _bottomNavigationBarItems,
      ),
    );
  }

  void _onBottomNagigationBarTapped(index) {
    setState(() {
      if (_index == index) {
        print("刷新");
      } else {
        _index = index;
      }
    });
  }

  BottomNavigationBarItem _getBottomNavItem(
    String title,
    IconData icon,
    int index,
  ) {
    Color color = Theme.of(context).primaryColor;
    return BottomNavigationBarItem(
      icon: _index == index
          ? Icon(
              icon,
              size: 20,
              color: color,
            )
          : Icon(
              icon,
              size: 20,
              color: Colors.grey[600],
            ),
      label: title,
    );
  }
}
