import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../apis/personal_apis.dart';
import '../../models/fileListModels/provider.dart';
import '../../utils/event_bus.dart';
import '../../utils/global_constant.dart';
import '../../utils/http_request.dart';
import '../../utils/tools.dart';
import '/src/components/myTopBar/my_top_bar.dart';
import '/src/components/listTable/list_table.dart';

class PersonalPage extends StatefulWidget {
  final String bizType = GlobalConstant.personal;
  final String title;
  const PersonalPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  bool isShowTopOptionBar = false;
  bool isShowBatchOptionBar = false;
  Map<String, dynamic> listData = {};
  late StreamSubscription<RefreshFileList> _refreshFileListSubscription;

  Map<String, dynamic> tableparm = {
    'fileId': 'rootpath',
    'page': 0,
    'size': 20,
    'type': 'gmt_modified',
    'order': 1
  };

  @override
  initState() {
    super.initState();
    Provider.of<FileListProvider>(context, listen: false)
        .assigningType(widget.bizType);
    _getPersonalFileList();

    _refreshFileListSubscription =
        eventBus.on<RefreshFileList>().listen((event) {
      if (event.type == 1) {
        _onRefresh();
      }
    });
  }

  @override
  void dispose() {
    _refreshFileListSubscription.cancel();
    super.dispose();
  }

  Future _getPersonalFileList() {
    return requestUnified(() async {
      List? oldListData = listData['content'];
      Map<String, dynamic> getPersonalFileListResponse =
          await requestClient.post(
        PersonalFileApis.getPersonalFileList,
        data: tableparm,
      );
      setState(() {
        listData = getPersonalFileListResponse;
        if (!getPersonalFileListResponse['first']) {
          listData['content'].insertAll(0, oldListData);
        } else {
          EasyLoading.showSuccess('?????????????????????');
        }
        print('???????????? listData :>>');
        // print(listData);
        print(listData['content'].length);

        GlobalConstant.files[widget.bizType] = listData['content'];
        // ???provider????????????????????????
        Provider.of<FileListProvider>(context, listen: false)
            .assigningListData(listData);
      });
    });
  }

  Future _onRefresh() {
    Provider.of<FileListProvider>(context, listen: false).resetSelectedFiles();
    List breadCrumbs =
        Provider.of<FileListProvider>(context, listen: false).state.breadCrumbs;
    int length = breadCrumbs.length;
    tableparm['page'] = 0;
    tableparm['fileId'] = breadCrumbs[length - 1]['id'];
    return _getPersonalFileList();
  }

  Future _loadMoreData() async {
    if (!listData['last']) {
      tableparm['page']++;
      await _getPersonalFileList();
    }
    return listData['last'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          _myTopBar(isShowBatchOptionBar),
          Expanded(
            child: Stack(
              children: [
                MyListTable(
                  type: widget.bizType,
                  onRefresh: _onRefresh,
                  loadMoreData: _loadMoreData,
                  isLast: listData['last'] ?? false,
                ),
                Positioned(
                  child: _topOptionBar(isShowTopOptionBar),
                ),
              ],
              alignment: Alignment.topLeft,
            ),
          ),
        ],
      ),
    );
  }

  Widget _myTopBar(bool isShow) {
    return MyTopBar(
      key: UniqueKey(),
      leadingWidget: isShow
          ? TextButton(
              onPressed: () {
                Provider.of<FileListProvider>(context, listen: false)
                    .changeIsSelectedAll();
              },
              child: Consumer<FileListProvider>(
                  builder: (context, provider, child) {
                bool isSelectedAll = provider.state.isSelectedAll;
                return Text(
                  isSelectedAll ? '????????????' : '??????',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                );
              }),
            )
          : null,
      title: _getTopBarTitle(),
      actionsWidget: isShow
          ? [
              IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {
                  setState(() {
                    isShowTopOptionBar = !isShowTopOptionBar;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  _changeIsShowBatchOptionBar();
                },
                child: const Text(
                  '??????',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ]
          : [
              IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {
                  setState(() {
                    isShowTopOptionBar = !isShowTopOptionBar;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.task_alt),
                onPressed: () {
                  _changeIsShowBatchOptionBar();
                },
              ),
            ],
    );
  }

  Widget _getTopBarTitle() {
    return Consumer<FileListProvider>(builder: (context, provider, child) {
      Widget topBarTitle;

      if (provider.state.isShowCheckbox) {
        if (provider.state.selectedFiles.isEmpty) {
          topBarTitle = const Text(
            '???????????????',
          );
        } else {
          topBarTitle = Text(
            '?????????${provider.state.selectedFiles.length}?????????',
          );
        }
      } else {
        topBarTitle = Text(
          widget.title,
        );
      }
      return topBarTitle;
    });
  }

  void _changeIsShowBatchOptionBar() {
    setState(() {
      isShowBatchOptionBar = !isShowBatchOptionBar;
      Provider.of<FileListProvider>(context, listen: false)
          .changeShowCheckbox(isShowBatchOptionBar);
    });
  }

  // ?????????????????????
  Widget _topOptionBar(bool isShow) {
    Color color = Theme.of(context).primaryColor;
    Widget topOptionBar = Container(
      padding: const EdgeInsets.only(bottom: 5),
      color: const Color.fromRGBO(240, 240, 240, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTopOptionBtnColumn(
            color,
            const IconData(
              0xe649,
              fontFamily: 'ypIcon',
              matchTextDirection: true,
            ),
            '???????????????',
            _createNewFolder,
          ),
          _buildTopOptionBtnColumn(
            color,
            const IconData(
              0xe674,
              fontFamily: 'ypIcon',
              matchTextDirection: true,
            ),
            '????????????',
            _createNewDocument,
          ),
          _buildTopOptionBtnColumn(
            color,
            const IconData(
              0xe63a,
              fontFamily: 'ypIcon',
              matchTextDirection: true,
            ),
            '????????????',
            _uploadFiles,
          ),
        ],
      ),
    );
    return isShow ? topOptionBar : const SizedBox();
  }

  Widget _buildTopOptionBtnColumn(
    Color color,
    IconData icon,
    String label,
    Function actionCallback,
  ) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(
              icon,
              size: 20,
              color: color,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
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
        actionCallback();
      },
      behavior: HitTestBehavior.opaque,
    );
  }

  void _createNewFolder() {
    print('???????????????');
  }

  void _createNewDocument() {
    print('????????????');
  }

  void _uploadFiles() {
    List uploadTypes = ['??????', '??????', '??????', '????????????', '????????????'];
    List<Widget> children = uploadTypes.map((item) {
      return GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.pop(context);
          uploadTypeSelect(item);
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

  void uploadTypeSelect(String type) async {
    if (type == '??????') {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        PlatformFile file = result.files.first;

        String creationTime = DateTime.now().millisecondsSinceEpoch.toString();
        String guid = Tools.generateRandomStrings(10) + creationTime;
        String filePath = file.path ?? '';
        File generatorFile = File(filePath);
        String? mimeType = Tools.getMimeType(file.extension);

        int size = file.size;
        int chunkSize = GlobalConstant.chunkSize;
        int chunks = (size / chunkSize).ceil();

        Map<String, dynamic> data = {
          'file': generatorFile,
          'pickerType': 'filePicker',
          'name': file.name,
          'chunk': 0,
          'chunks': chunks,
          'type': mimeType,
          'size': size,
          'dirId': tableparm['fileId'],
          'guid': guid,
          'uploadType': '',
          'chunkSize': chunkSize,
          'md5': '',
          'fileCategory': 1,
          'filePath': filePath,
          'creationTime': creationTime,
          'state': 'waiting',
          'stateText': '????????????',
        };
        eventBus.fire(AddUploadingListData(data));
      }
    } else {
      final ImagePicker _picker = ImagePicker();
      List<XFile?>? mediaFiles = [];
      XFile? resource;
      switch (type) {
        case '??????':
          mediaFiles = await _picker.pickMultiImage();
          break;
        case '??????':
          resource = await _picker.pickImage(source: ImageSource.camera);
          break;
        case '????????????':
          resource = await _picker.pickVideo(source: ImageSource.gallery);
          break;
        case '????????????':
          resource = await _picker.pickVideo(source: ImageSource.camera);
          break;
      }
      if (resource != null) {
        mediaFiles?.add(resource);
      }

      mediaFiles?.forEach((file) async {
        if (file != null) {
          String creationTime =
              DateTime.now().millisecondsSinceEpoch.toString();
          String guid = Tools.generateRandomStrings(10) + creationTime;

          int size = await file.length();
          int chunkSize = GlobalConstant.chunkSize;
          int chunks = (size / chunkSize).ceil();

          Map<String, dynamic> data = {
            'file': file,
            'pickerType': 'imagePicker',
            'name': file.name,
            'chunk': 0,
            'chunks': chunks,
            'type': file.mimeType,
            'size': size,
            'dirId': tableparm['fileId'],
            'guid': guid,
            'uploadType': '',
            'chunkSize': chunkSize,
            'md5': '',
            'fileCategory': 1,
            'filePath': file.path,
            'creationTime': creationTime,
            'state': 'waiting',
            'stateText': '????????????',
          };
          eventBus.fire(AddUploadingListData(data));
        }
      });
    }
  }
}
