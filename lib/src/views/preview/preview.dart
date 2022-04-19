import 'dart:convert';

import 'package:flutter/material.dart';

import '../../components/myTopBar/my_top_bar.dart';
import '../../utils/global_constant.dart';
import '../../utils/http_request.dart';
import '../../utils/tools.dart';
import 'preview_file.dart';
import 'preview_image.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key, required this.routeParams}) : super(key: key);
  final Map<String, dynamic> routeParams;

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  late String id;
  late String pageType;
  late Map<String, dynamic> file;
  late String? fileType;
  late List currentFileList;
  late List imageList;

  @override
  void initState() {
    super.initState();
    id = widget.routeParams['id'][0];
    pageType = widget.routeParams['type'][0];
    file = {};
    fileType = '';
    currentFileList = [];
    imageList = [];

    currentFileList = GlobalConstant.files[pageType];
    file = _getCurrentFile(currentFileList, id);
    fileType = Tools.getPreviewType(file['fileName']);

    if (fileType == 'image') {
      // 过滤出当前文件列表中所有的图片
      imageList = currentFileList.where((item) {
        if (Tools.getPreviewType(item['fileName']) == 'image') {
          if (pageType != GlobalConstant.otherShare) {
            item['src'] = RequestConfig.baseUrl +
                '/api/file/download/img' +
                '?fileId=' +
                item['id'] +
                '&type=2';
          } else {
            Map<String, dynamic> params = {
              'fileArr': [
                {
                  'assignedShareId': item['id'],
                  'fileIds': [item['fileId']]
                }
              ],
              'type': 2
            };
            String json = jsonEncode(params);
            item['src'] = RequestConfig.baseUrl +
                '/api/assignedShare/receiveUser/downloadFile' +
                '?queryStr=' +
                Uri.encodeComponent(json);
          }
          return true;
        } else {
          return false;
        }
      }).toList();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
    );
  }

  Widget _getBody() {
    Widget bodyWidget;
    if (fileType == 'image') {
      int index = imageList.indexWhere((item) {
        return item['id'] == file['id'];
      });
      bodyWidget = PreviewImage(
        file,
        galleryItems: imageList,
        defaultImage: index,
        pageChanged: _pageChanged,
        decoration: BoxDecoration(color: Colors.grey[50]),
      );
    } else if (fileType == 'file') {
      bodyWidget = PreviewFile(file);
    } else {
      print('不支持预览 fileType: $fileType');
      bodyWidget = Scaffold(
        body: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const MyTopBar(
                title: Text(
                  '预览',
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    '文件格式不支持预览',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return bodyWidget;
  }

  Map<String, dynamic> _getCurrentFile(List fileList, String id) {
    Map<String, dynamic> currentFile = fileList.firstWhere((item) {
      return item['id'] == id;
    });
    return currentFile;
  }

  void _pageChanged(int index) {
    print('_pageChanged');
    print(index);
  }
}
