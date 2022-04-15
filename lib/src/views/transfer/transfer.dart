import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../iconfont/icon_font.dart';
import '../../models/transferListModels/provider.dart';
import '../../utils/event_bus.dart';
import '../../utils/file_icon.dart';
import '../../utils/tools.dart';
import '/src/components/myTopBar/my_top_bar.dart';

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
  late StreamSubscription<AddDownloadingListData>
      _addDownloadingListDataSubscription;

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
    _addDownloadingListDataSubscription =
        eventBus.on<AddDownloadingListData>().listen((event) {
      Provider.of<TransferListProvider>(context, listen: false)
          .addDownloadingListData(event.data);
    });
  }

  // 3. 注销状态
  @override
  void dispose() {
    _tabController.dispose();
    _addUploadingListDataSubscription.cancel();
    _addDownloadingListDataSubscription.cancel();
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
            if (file['cancelToken'] != null) {
              CancelToken cancelToken = file['cancelToken'];
              cancelToken.cancel();
              file['state'] = 'pausing';
              file['stateText'] = '暂停';
            }
          } else {
            file['state'] = 'uploading';
            file['stateText'] = '上传中';
            Provider.of<TransferListProvider>(context, listen: false)
                .readFile(file);
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

  // 上传列表
  Widget _tabUpload() {
    return Consumer<TransferListProvider>(builder: (context, provider, child) {
      List uploadingListData = provider.state.uploadingListData;
      int uploadingListLength = provider.state.uploadingListData.length;
      List uploadCompletedListData = provider.state.uploadCompletedListData;
      int uploadCompletedListLength =
          provider.state.uploadCompletedListData.length;

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
                                    const SizedBox(
                                      width: 10,
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
                  child: Text('完成上传 ( $uploadCompletedListLength )',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                ),
              ),
              SliverList(
                // 上传完成 列表
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Map<String, dynamic> currentItem =
                        uploadCompletedListData[index];
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
                  childCount: uploadCompletedListLength,
                ),
              )
            ],
          ));
    });
  }

  // 下载进度
  Widget _downloadProgressWrapper(Map<String, dynamic> file) {
    String count = Tools.transformSize(file['count']);
    String total = Tools.transformSize(file['total']);
    return Container(
      margin: EdgeInsets.fromLTRB(widget.marginSize, 0, 0, 0),
      height: widget.itemHeight - widget.titleHeight,
      child: Row(
        children: [
          Text(
            file['total'] == -1 ? '$count / --' : '$count / $total',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  // 文件下载 暂定/继续
  Widget _fileDownloadHandler(Map<String, dynamic> file) {
    bool isDownloading = file['state'] == 'downloading' ? true : false;
    IconNames icon = file['state'] == 'downloading'
        ? IconNames.pause_circle_o
        : IconNames.play_circle_o;
    return IconButton(
      onPressed: () {
        setState(() {
          if (isDownloading) {
            if (file['cancelToken'] != null) {
              CancelToken cancelToken = file['cancelToken'];
              cancelToken.cancel();
              file['state'] = 'pausing';
              file['stateText'] = '暂停';
            }
          } else {
            // TODO:未实现断点续传
            file['state'] = 'downloading';
            file['stateText'] = '下载中';
            Provider.of<TransferListProvider>(context, listen: false)
                .startDownload(file);
          }
          isDownloading = !isDownloading;
        });
      },
      icon: IconFont(
        icon,
        color: '#616161',
      ),
      iconSize: 16,
    );
  }

  // 下载列表
  Widget _tabDownload() {
    return Consumer<TransferListProvider>(builder: (context, provider, child) {
      List downloadingListData = provider.state.downloadingListData;
      int downloadingListLength = provider.state.downloadingListData.length;
      List downloadCompletedListData = provider.state.downloadCompletedListData;
      int downloadCompletedListLength =
          provider.state.downloadCompletedListData.length;

      return Container(
          padding: const EdgeInsets.all(0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                sliver: SliverToBoxAdapter(
                  child: Text('正在下载 ( $downloadingListLength )',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                ),
              ),
              SliverList(
                // 正在下载 列表
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Map<String, dynamic> currentItem =
                        downloadingListData[index];
                    print('currentItem 正在下载');
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
                                          _downloadProgressWrapper(currentItem),
                                        ],
                                      ),
                                    ),
                                    _fileDownloadHandler(currentItem),
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
                  childCount: downloadingListLength,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                sliver: SliverToBoxAdapter(
                  child: Text('完成下载 ( $downloadCompletedListLength )',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                ),
              ),
              SliverList(
                // 下载完成 列表
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Map<String, dynamic> currentItem =
                        downloadCompletedListData[index];
                    print('currentItem 完成下载');
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
                                    _fileSizeWrapper(currentItem['total'] == -1
                                        ? currentItem['count']
                                        : currentItem['total']),
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
                  childCount: downloadCompletedListLength,
                ),
              )
            ],
          ));
    });
  }

  // 涉敏文件列表
  Widget _tabHandler() {
    return Container(
      padding: const EdgeInsets.all(0),
      color: Colors.orange,
    );
  }
}
