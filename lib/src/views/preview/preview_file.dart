import 'package:flutter/material.dart';

import '../../components/myTopBar/my_top_bar.dart';

class PreviewFile extends StatefulWidget {
  const PreviewFile(this.file, {Key? key}) : super(key: key);
  final Map<String, dynamic> file;

  @override
  State<PreviewFile> createState() => _PreviewFileState();
}

class _PreviewFileState extends State<PreviewFile> {
  @override
  Widget build(BuildContext context) {
    print('文件预览');
    print(widget.file);
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const MyTopBar(
            title: Text(
              '文件预览',
            ),
          ),
          Expanded(
            child: Container(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
