import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import '../../utils/event_bus.dart';
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
  late StreamSubscription<PreviewCurrentFileList>
      _previewCurrentFileListSubscription;

  @override
  void initState() {
    super.initState();
    id = widget.routeParams['id'][0];
    pageType = widget.routeParams['type'][0];
    file = {};
    fileType = '';
    currentFileList = [];
    imageList = [];

    eventBus.fire(BuildPreview(pageType));
    _previewCurrentFileListSubscription =
        eventBus.on<PreviewCurrentFileList>().listen((event) {
      currentFileList = event.data;
      file = _getCurrentFile(currentFileList, id);
      fileType = Tools.getPreviewType(file['fileName']);
      if (fileType == 'image') {
        imageList = currentFileList.where((item) {
          if (Tools.getPreviewType(item['fileName']) == 'image') {
            if (pageType != 'otherShare') {
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
      setState(() {});
    });
  }

  @override
  void dispose() {
    _previewCurrentFileListSubscription.cancel();
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
    if (fileType == null) {
      bodyWidget = const SizedBox();
    } else {
      if (fileType == 'image') {
        int index = imageList.indexWhere((item) {
          return item['id'] == file['id'];
        });
        bodyWidget = PreviewImage(
          file,
          galleryItems: imageList,
          defaultImage: index,
          pageChanged: _pageChanged,
          decoration: const BoxDecoration(color: Colors.white),
        );
      } else {
        bodyWidget = PreviewFile(file);
      }
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
