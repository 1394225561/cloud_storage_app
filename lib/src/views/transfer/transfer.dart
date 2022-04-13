import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../iconfont/icon_font.dart';
import '../../apis/personal_apis.dart';
import '../../apis/upload.dart';
import '../../models/fileListModels/provider.dart';
import '../../models/transferListModels/provider.dart';
import '../../utils/event_bus.dart';
import '../../utils/file_icon.dart';
import '../../utils/http_request.dart';
import '../../utils/tools.dart';
import '/src/components/myTopBar/my_top_bar.dart';
import '/src/components/listTable/list_table.dart';

class TransferPage extends StatefulWidget {
  final String bizType = "transfer";
  final String title;
  const TransferPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final double itemHeight = 40;
  final double titleHeight = 25;
  final double marginSize = 6;

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage>
    with SingleTickerProviderStateMixin {
  int _currentTabIndex = 0;
  late TabController _tabController;
  late StreamSubscription<AddUploadingListData>
      _addUploadingListDataSubscription;

  static const List<Tab> _transferTabList = <Tab>[
    Tab(text: '上传列表'),
    Tab(text: '下载列表'),
    Tab(text: '预警处理'),
  ];

  // 2. 初始化状态
  @override
  void initState() {
    super.initState();
    // TabController的滚动事件会触发一次监听, 点击事件会触发两次监听(一次是正常触发,一次是tab的动画触发)
    _tabController =
        TabController(length: _transferTabList.length, vsync: this);

    // 添加监听获取tab选中下标
    _tabController.addListener(() {
      if (_tabController.index == _tabController.animation?.value) {
        _currentTabIndex = _tabController.index;
      }
    });

    //订阅eventbus
    _addUploadingListDataSubscription =
        eventBus.on<AddUploadingListData>().listen((event) {
      Provider.of<TransferListProvider>(context, listen: false)
          .addUploadingListData(event.data);
    });
  }

  // 3. 注销状态
  @override
  void dispose() {
    _tabController.dispose();
    _addUploadingListDataSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          _myTopBar(),
          TabBar(
              tabs: _transferTabList,
              labelColor: Colors.grey[700],
              controller: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _tabUpload(),
                _tabDownload(),
                _tabHandler(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _myTopBar() {
    return MyTopBar(
      title: _getTopBarTitle(),
    );
  }

  Widget _getTopBarTitle() {
    Widget topBarTitle;

    topBarTitle = Text(
      widget.title,
    );
    return topBarTitle;
  }

  // 文件icon
  Widget _fileIconWrapper(Map<String, dynamic> file) {
    IconNames icon = FileIcon.getFileIcon(file);
    return SizedBox(
      width: 30,
      height: widget.itemHeight,
      child: Center(
        child: IconFont(
          icon,
          size: 26,
        ),
      ),
    );
  }

  // 文件名
  Widget _titleWrapper(String text) {
    return Container(
      height: widget.titleHeight,
      margin: EdgeInsets.fromLTRB(widget.marginSize, 0, 0, 0),
      child: Text(
        text,
        // style: Theme.of(context).textTheme.headline6,
        style: const TextStyle(
          fontSize: 14,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  // 文件创建时间
  Widget _timestampWrapper(String text) {
    String time = Tools.transformTime(text);
    return Container(
      margin: EdgeInsets.fromLTRB(widget.marginSize, 0, 0, 0),
      height: widget.itemHeight - widget.titleHeight,
      child: Row(
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  // 文件状态
  Widget _fileState(Map<String, dynamic> file) {
    String stateText = file['stateText'];
    Widget fileStateWidget = SizedBox(
      height: widget.itemHeight,
      child: Center(
        child: Text(
          stateText,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        ),
      ),
    );
    return fileStateWidget;
  }

  // 文件大小
  Widget _fileSizeWrapper(int sizebytes) {
    var size = Tools.transformSize(sizebytes);
    Widget fileSizeWidget = SizedBox(
      height: widget.itemHeight,
      child: Center(
        child: Text(
          size,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        ),
      ),
    );
    return fileSizeWidget;
  }

  // 文件上传 暂停/继续
  Widget _fileUploadHandler(Map<String, dynamic> file) {
    bool isUploading = file['state'] == 'uploading' ? true : false;
    IconNames icon = file['state'] == 'uploading'
        ? IconNames.pause_circle_o
        : IconNames.play_circle_o;
    return IconButton(
      onPressed: () {
        setState(() {
          if (isUploading) {
            file['state'] = 'pausing';
            file['stateText'] = '暂停';
          } else {
            file['state'] = 'uploading';
            file['stateText'] = '上传中';
          }
          isUploading = !isUploading;
        });
      },
      icon: IconFont(
        icon,
        color: '#616161',
      ),
      iconSize: 16,
    );
  }

  Widget _tabUpload() {
    return Consumer<TransferListProvider>(builder: (context, provider, child) {
      List uploadingListData = provider.state.uploadingListData;
      int uploadingListLength = provider.state.uploadingListData.length;
      List completedListData = provider.state.completedListData;
      int completedListLength = provider.state.completedListData.length;

      return Container(
          padding: const EdgeInsets.all(0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                sliver: SliverToBoxAdapter(
                  child: Text('正在上传 ( $uploadingListLength )',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                ),
              ),
              SliverList(
                // 正在上传 列表
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Map<String, dynamic> currentItem = uploadingListData[index];
                    print('currentItem 正在上传');
                    print(currentItem);
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(left: widget.marginSize),
                                child: SizedBox(
                                  // height: checkboxHeight,
                                  // width: widget.checkboxWidth,
                                  child: Center(
                                    child: _fileIconWrapper(currentItem),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _titleWrapper(currentItem['name']),
                                          _timestampWrapper(
                                              currentItem['creationTime']),
                                        ],
                                      ),
                                    ),
                                    _fileState(currentItem),
                                    GestureDetector(
                                      child: Container(
                                        // height: 40,
                                        width: 10,
                                        // color: Colors.red,
                                      ),
                                      onTap: () {
                                        // Provider.of<TransferListProvider>(
                                        //         context,
                                        //         listen: false)
                                        //     .completeFileUpload(currentItem);
                                      },
                                    ),
                                    _fileUploadHandler(currentItem),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 5,
                        ),
                      ],
                    );
                  },
                  //设置显示个数
                  childCount: uploadingListLength,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                sliver: SliverToBoxAdapter(
                  child: Text('完成上传 ( $completedListLength )',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                ),
              ),
              SliverList(
                // 上传完成 列表
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Map<String, dynamic> currentItem = completedListData[index];
                    print('currentItem 完成上传');
                    print(currentItem);
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(left: widget.marginSize),
                                child: SizedBox(
                                  // height: checkboxHeight,
                                  // width: widget.checkboxWidth,
                                  child: Center(
                                    child: _fileIconWrapper(currentItem),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _titleWrapper(currentItem['name']),
                                          _timestampWrapper(
                                              currentItem['creationTime']),
                                        ],
                                      ),
                                    ),
                                    _fileSizeWrapper(currentItem['size']),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    _fileState(currentItem),
                                    // const SizedBox(
                                    //   width: 10,
                                    // ),
                                    // _fileUploadHandler(currentItem),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 5,
                        ),
                      ],
                    );
                  },
                  //设置显示个数
                  childCount: completedListLength,
                ),
              )
            ],
          ));
    });
  }

  Widget _tabDownload() {
    return Container(
      padding: const EdgeInsets.all(0),
      color: Colors.black,
    );
  }

  Widget _tabHandler() {
    return Container(
      padding: const EdgeInsets.all(0),
      color: Colors.orange,
    );
  }
}
