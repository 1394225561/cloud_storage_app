import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../routers/router_table.dart';
import '../../utils/global_constant.dart';

typedef PageChanged = void Function(int index);

class PreviewImage extends StatefulWidget {
  const PreviewImage(this.file,
      {Key? key,
      required this.galleryItems,
      this.defaultImage = 1,
      required this.pageChanged,
      this.direction = Axis.horizontal,
      required this.decoration})
      : super(key: key);
  final Map<String, dynamic> file;
  final List galleryItems; //图片列表
  final int defaultImage; //默认第几张
  final PageChanged pageChanged; //切换图片回调
  final Axis direction; //图片查看方向
  final BoxDecoration decoration; //背景设计

  @override
  State<PreviewImage> createState() => _PreviewImageState();
}

class _PreviewImageState extends State<PreviewImage> {
  late int tempSelect;
  late Widget imageWidget;
  PhotoViewComputedScale initialScale = PhotoViewComputedScale.contained * 0.8;
  // 缩放controller
  PhotoViewScaleStateController pageOptionsScaleController =
      PhotoViewScaleStateController();

  @override
  void initState() {
    super.initState();
    tempSelect = widget.defaultImage + 1;
    imageWidget = PhotoViewGallery.builder(
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: NetworkImage(
            widget.galleryItems[index]['src'],
            headers: {
              'cookie': GlobalConstant.cookie,
            },
          ),
          initialScale: initialScale,
          heroAttributes:
              PhotoViewHeroAttributes(tag: widget.galleryItems[index]['id']),
          scaleStateController: pageOptionsScaleController,
        );
      },
      scrollPhysics: const BouncingScrollPhysics(),
      itemCount: widget.galleryItems.length,
      scrollDirection: widget.direction,
      backgroundDecoration: widget.decoration,
      pageController: PageController(initialPage: widget.defaultImage),
      onPageChanged: (index) => setState(() {
        pageOptionsScaleController.scaleState = PhotoViewScaleState.initial;
        tempSelect = index + 1;
        widget.pageChanged(index);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            _routerBack();
          },
          child: Stack(
            children: [
              imageWidget,
              Positioned(
                right: 20,
                bottom: 20,
                child: Text(
                  '$tempSelect/${widget.galleryItems.length}',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onWillPop: () async {
        _routerBack();
        return true;
      },
    );
  }

  void _routerBack() {
    // TODO: 直接pop 会报错 Looking up a deactivated widget's ancestor is unsafe.
    pageOptionsScaleController.scaleState = PhotoViewScaleState.covering;
    RouterManager.router?.pop(context);
  }
}
