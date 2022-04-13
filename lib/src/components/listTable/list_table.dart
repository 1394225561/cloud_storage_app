import 'dart:async';

import 'package:cloud_storage_app/iconfont/icon_font.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/fileListModels/provider.dart';
import '../../utils/file_icon.dart';
import '../../utils/operations_static.dart';
import '../../utils/tools.dart';
import '/src/routers/router_table.dart';
import '/src/utils/show_snack_bar.dart';
import '/src/utils/operations_auth.dart';

class MyListTable extends StatefulWidget {
  const MyListTable({
    Key? key,
    required this.type,
    required this.onRefresh,
    this.loadMoreData,
    required this.isLast,
  }) : super(key: key);
  final String type;
  final Future Function() onRefresh;
  final Function? loadMoreData;
  final bool isLast;

  final double marginSize = 6;
  final double itemHeight = 40;
  final double checkboxWidth = 15;

  @override
  State<MyListTable> createState() => _MyListTableState();
}

class _MyListTableState extends State<MyListTable> {
  bool isLoading = false;
  ScrollController scrollController = ScrollController();
  String pullOnLoadingLabel = '上拉加载更多';
  late double checkboxHeight;

  @override
  void initState() {
    super.initState();
    checkboxHeight = widget.itemHeight + 2 * widget.marginSize;
    // 给列表滚动添加监听
    scrollController.addListener(() {
      if (!widget.isLast &&
          !isLoading &&
          scrollController.position.pixels ==
              scrollController.position.maxScrollExtent) {
        setState(() {
          pullOnLoadingLabel = '努力加载中...';
          isLoading = true;
          loadMoreData();
        });
      }
    });
  }

  @override
  void didUpdateWidget(covariant MyListTable oldWidget) {
    if (widget.isLast) {
      pullOnLoadingLabel = '已加载全部数据';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // 组件销毁时，释放资源
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FileListProvider>(builder: (context, provider, child) {
      List fileList = provider.state.listData;
      List selectedFiles = provider.state.selectedFiles;
      bool isShowCheckbox = provider.state.isShowCheckbox;
      bool isRootPath = provider.state.isRootPath;
      List breadCrumbs = provider.state.breadCrumbs;
      double deviceWidth = MediaQuery.of(context).size.width;

      if (breadCrumbs.isEmpty) {
        Provider.of<FileListProvider>(context, listen: false)
            .breadCrumbsHandler(
          'add',
          {
            'name': '全部文件',
            'id': 'rootpath',
            'color': const Color.fromARGB(255, 228, 57, 60),
            'activeColor': Colors.grey[600],
            'separator': ' > ',
          },
        );
      }

      return Container(
        padding: const EdgeInsets.all(0),
        child: RefreshIndicator(
          onRefresh: onRefresh,
          displacement: 0,
          child: Stack(
            children: [
              ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: scrollController,
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  left: widget.marginSize,
                  top: widget.marginSize,
                  bottom: widget.marginSize,
                ),
                itemCount: fileList.length + 1,
                itemBuilder: (context, i) {
                  if (i < fileList.length) {
                    bool isShowOptionBar =
                        fileList[i]['isShowOptionBar'] ?? false;

                    bool isCanFavorite = widget.type == 'personal' ||
                        widget.type == 'favorite' ||
                        OperationsAuth.judgeFileCanFavorite(
                            widget.type, fileList[i], isRootPath);
                    fileList[i]['isCanFavorite'] = isCanFavorite;

                    bool isCanLock =
                        fileList[i]['isDir'] == 0 && widget.type == 'personal';
                    fileList[i]['isCanLock'] = isCanLock;

                    return Column(
                      children: [
                        i == 0
                            ? _getBreadCrumbsWidget(breadCrumbs)
                            : const SizedBox(),
                        i == 0
                            ? const Divider(
                                height: 5,
                              )
                            : const SizedBox(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            isShowCheckbox
                                ? Container(
                                    padding: EdgeInsets.only(
                                        left: widget.marginSize),
                                    child: SizedBox(
                                      height: checkboxHeight,
                                      width: widget.checkboxWidth,
                                      child: Center(
                                        child: Transform.scale(
                                          scale: 0.9,
                                          child: Checkbox(
                                            value: fileList[i]['selected'] ??
                                                false,
                                            shape: const CircleBorder(),
                                            onChanged: (value) {
                                              // setState(() {
                                              //   fileList[i]['selected'] = value;
                                              // });
                                              fileList[i]['selected'] = value;
                                              if (value == true) {
                                                Provider.of<FileListProvider>(
                                                        context,
                                                        listen: false)
                                                    .singleCheckHandler(
                                                  actionType: 'add',
                                                  selectedFile: fileList[i],
                                                );
                                              } else {
                                                Provider.of<FileListProvider>(
                                                        context,
                                                        listen: false)
                                                    .singleCheckHandler(
                                                  actionType: 'remove',
                                                  selectedFile: fileList[i],
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox(
                                    width: 0,
                                    height: 0,
                                  ),
                            Container(
                              padding: EdgeInsets.only(left: widget.marginSize),
                              child: SizedBox(
                                height: checkboxHeight,
                                // width: widget.checkboxWidth,
                                child: Center(
                                  child: _fileIconWrapper(fileList[i]),
                                ),
                              ),
                            ),
                            Expanded(
                              child: MyClickableListTile(
                                fileList[i]['fileName'],
                                fileList[i],
                                fileList[i]['gmtModified'],
                                i,
                                type: widget.type,
                                breadCrumbsHandler: breadCrumbsHandler,
                              ),
                            ),
                            SizedBox(
                              height: checkboxHeight,
                              width: 25,
                              child: Center(
                                child: IconButton(
                                  // key: UniqueKey(),
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<FileListProvider>(context,
                                              listen: false)
                                          .changeFileOptionBarDisplay(
                                        currentFile: fileList[i],
                                      );
                                    });
                                  },
                                  icon: isShowOptionBar
                                      ? const Icon(Icons.expand_more)
                                      : const Icon(Icons.chevron_right),
                                  iconSize: 16,
                                  padding: EdgeInsets.only(
                                    right: widget.marginSize,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        isShowOptionBar
                            ? _getOptionBarWidget(
                                widget.type,
                                fileList[i],
                                false,
                              )
                            : const SizedBox(),
                        const Divider(
                          height: 5,
                        ),
                      ],
                    );
                  } else {
                    if (fileList.isEmpty) {
                      return Column(
                        children: [
                          _getBreadCrumbsWidget(breadCrumbs),
                          renderBottom()
                        ],
                      );
                    }
                    return renderBottom();
                  }
                },
                scrollDirection: Axis.vertical,
              ),
              Positioned(
                width: deviceWidth,
                child: isShowCheckbox && selectedFiles.isNotEmpty
                    ? _getBatchOptionBarWidget(
                        widget.type, selectedFiles, isRootPath)
                    : const SizedBox(),
                bottom: 0,
              ),
            ],
            alignment: Alignment.topLeft,
            fit: StackFit.expand,
          ),
        ),
      );
    });
  }

  // 下拉刷新
  Future onRefresh() {
    return Future(widget.onRefresh);
  }

  // 上拉加载更多，加载数据处理
  loadMoreData() async {
    bool isLast = await widget.loadMoreData!();
    if (isLast) {
      pullOnLoadingLabel = '已加载全部数据';
    } else {
      pullOnLoadingLabel = '上拉加载更多';
    }
    setState(() {
      isLoading = false;
    });
  }

  // 上拉加载相关
  Widget renderBottom() {
    if (isLoading) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              pullOnLoadingLabel,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF111111),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 15)),
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          pullOnLoadingLabel,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF111111),
          ),
        ),
      );
    }
  }

  // 面包屑相关
  Widget _getBreadCrumbsWidget(List breadCrumbs) {
    return Container(
      padding: EdgeInsets.only(
        left: widget.marginSize,
        right: widget.marginSize,
      ),
      height: 30,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int index = 0; index < breadCrumbs.length; index++)
              Builder(
                builder: (context) {
                  String separator = breadCrumbs[index]['separator'];
                  Color color = breadCrumbs[index]['color'];
                  if (index == breadCrumbs.length - 1) {
                    separator = '';
                    color = breadCrumbs[index]['activeColor'];
                  }
                  String label = breadCrumbs[index]['name'] + separator;

                  return GestureDetector(
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: 12,
                        color: color,
                      ),
                    ),
                    onTap: () {
                      breadCrumbsHandler('click', breadCrumbs[index]);
                    },
                    behavior: HitTestBehavior.opaque,
                  );
                },
              )
          ],
        ),
      ),
    );
  }

  void breadCrumbsHandler(String actionType, Map<String, dynamic> item) {
    Provider.of<FileListProvider>(context, listen: false).breadCrumbsHandler(
      actionType,
      item,
    );
    widget.onRefresh();
  }

  // 文件icon
  Widget _fileIconWrapper(Map<String, dynamic> file) {
    IconNames icon =
        FileIcon.getFileIcon(file, type: widget.type == 'share' ? 2 : 1);
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

  // 单行操作栏相关
  Widget _getOptionBarWidget(
    String type,
    Map<String, dynamic> file,
    bool isRootPath,
  ) {
    Color color = Theme.of(context).primaryColor;
    List options = OperationsAuth.getSingleOptions(type, file, isRootPath);
    List extraOptions;
    int cutLength = 5;

    if (file['isCanLock']) {
      if (file['isLock'] == 0) {
        options.insert(0, Operations.lock);
      } else {
        options.insert(0, Operations.cancelLock);
      }
    }
    if (file['isCanFavorite']) {
      if (file['isFavorite'] == 0) {
        options.insert(0, Operations.permissionFavorite);
      } else {
        options.insert(0, Operations.permissionCancelFavorite);
      }
    }

    if (options.length > cutLength) {
      extraOptions = options.sublist(cutLength);
      file['extraOptions'] = extraOptions;
      options = options.sublist(0, cutLength);
      options.add(Operations.showMore);
    }

    List<Widget> children = options.map((item) {
      return _buildOptionBarColumn(
        color,
        item['iconClass'],
        item['toolTip'],
        item['event'],
        file,
        optionBarCallback,
      );
    }).toList();

    Widget optionBarWidget = Container(
      padding: EdgeInsets.only(right: widget.marginSize),
      color: const Color.fromRGBO(240, 240, 240, 1),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      ),
    );
    return optionBarWidget;
  }

  Widget _buildOptionBarColumn(
    Color color,
    IconNames icon,
    String label,
    String event,
    Map<String, dynamic> file,
    Function actionCallback,
  ) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: IconFont(
              icon,
              color: '#616161',
            ),
          ),
        ],
      ),
      onTap: () {
        actionCallback(event, file);
      },
    );
  }

  // 底部批量文件操作相关
  Widget _getBatchOptionBarWidget(
      String type, List selectedFiles, bool isRootPath) {
    Widget batchOptionBar;
    List options;
    if (selectedFiles.isNotEmpty) {
      options =
          OperationsAuth.getFullMultiOptions(type, selectedFiles, isRootPath);
      Color color = Theme.of(context).primaryColor;

      List<Widget> children = options.map((item) {
        return _buildBatchOptionBarColumn(
          color,
          item['iconClass'],
          item['toolTip'],
          item['event'],
          selectedFiles,
          batchOptionBarCallback,
        );
      }).toList();

      batchOptionBar = Container(
        padding: const EdgeInsets.only(top: 5),
        color: const Color.fromRGBO(240, 240, 240, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      );
    } else {
      options = [];
      batchOptionBar = const SizedBox();
    }
    return batchOptionBar;
  }

  Widget _buildBatchOptionBarColumn(
    Color color,
    IconNames icon,
    String label,
    String event,
    List files,
    Function actionCallback,
  ) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 0),
            child: IconFont(
              icon,
              color: '#616161',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        actionCallback(event, files);
      },
      behavior: HitTestBehavior.opaque,
    );
  }

  void optionBarCallback(String event, Map<String, dynamic> file) {
    List files = [];
    files.add(file);
    optionCallbackHandler(event, files);
  }

  void batchOptionBarCallback(String event, List files) {
    optionCallbackHandler(event, files);
  }

  void optionCallbackHandler(String event, List files) {
    print('optionCallbackHandler');
    print(event);
    print(files);
    print(files.length);
    switch (event) {
      case 'showMore':
        _showMore(files[0]);
        break;
      default:
        print(event);
        break;
    }
  }

  void _showMore(Map<String, dynamic> file) {
    List extraOptions = file['extraOptions'];
    List<Widget> children = extraOptions.map((item) {
      return GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                item['toolTip'],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.pop(context);
          // 更多里的操作都是单文件操作
          optionBarCallback(item['event'], file);
        },
        behavior: HitTestBehavior.opaque,
      );
    }).toList();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: children,
            ),
          ),
        );
      },
    ).then((val) {});
  }
}

class MyClickableListTile extends StatelessWidget {
  const MyClickableListTile(
    this.title,
    this.file,
    this.time,
    this.index, {
    Key? key,
    required this.type,
    required this.breadCrumbsHandler,
  }) : super(key: key);
  final String title;
  final Map<String, dynamic> file;
  final int time;
  final int index;
  final String type;
  final Function breadCrumbsHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (file['isDir'] == 1) {
          Map<String, dynamic> breadCrumbsItem = {
            'name': file['fileName'],
            'id': file['id'],
            'color': const Color.fromARGB(255, 228, 57, 60),
            'activeColor': Colors.grey[600],
            'separator': ' > ',
          };
          breadCrumbsHandler('add', breadCrumbsItem);
        } else {
          print('预览');
        }
        // Map<String, dynamic> routeParams = {'id': index};

        // Map<String, dynamic> arguments = await RouterManager.router?.navigateTo(
        //   context,
        //   '${RouterManager.dynamicPath}/${routeParams['id']}?event=a&event=b',
        // );
        // // Object? arguments = await Navigator.of(context)
        // //     .pushNamed(RouterTable.dynamicDetailPath, arguments: routeParams);
        // print('MyClickableListTile arguments :>>');
        // print(arguments);
        // ShowSnackBar.showInfo(
        //   context,
        //   "从动态详情 ${arguments['id']} 返回",
        // );
      },
      child: MyListTile(
        title,
        file,
        time,
        type: type,
      ),
      behavior: HitTestBehavior.opaque,
    );
  }
}

class MyListTile extends StatefulWidget {
  final String title;
  final Map<String, dynamic> file;
  final int time;
  final double itemHeight = 40;
  final double titleHeight = 25;
  final double marginSize = 6;
  final String type;
  const MyListTile(
    this.title,
    this.file,
    this.time, {
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  final double checkboxWidth = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widget.marginSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // _fileIconWrapper(widget.file),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleWrapper(widget.title),
                _timestampWrapper(widget.time.toString()),
              ],
            ),
          ),
          _fileSizeWrapper(widget.file),
        ],
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

  // 文件大小
  Widget _fileSizeWrapper(Map<String, dynamic> file) {
    var sizebytes = file['isDir'] == 1 ? '' : file['length'];
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
}
