import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../apis/app.dart';
import '/src/utils/http_request.dart';
import 'check_version.dart';
import 'global_constant.dart';
import 'mime_types.dart';

class Tools {
  static transformSize(byte) {
    if (byte == '') {
      return '';
    }
    dynamic size;
    if (byte < 1 * 1024) {
      size = byte.toString() + 'B';
    } else if (byte < 1 * 1024 * 1024) {
      size = (byte / 1024).toStringAsFixed(2) + 'KB';
    } else if (byte < 1 * 1024 * 1024 * 1024) {
      size = (byte / (1024 * 1024)).toStringAsFixed(2) + 'MB';
    } else {
      size = (byte / (1024 * 1024 * 1024)).toStringAsFixed(2) + 'GB';
    }
    String sizestr = size;
    int index = sizestr.indexOf('.');
    if (index != -1) {
      String dec = sizestr.substring(index + 1, index + 3);
      if (dec == '00') {
        return sizestr.substring(0, index) + sizestr.substring(index + 3);
      }
    }
    return sizestr;
  }

  static transformTime(String timestamp) {
    DateTime dt = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    String timeStr = dt.toLocal().toString();
    int index = timeStr.lastIndexOf(':');
    timeStr = timeStr.substring(0, index);
    return timeStr;
  }

  static String generateRandomStrings(int length) {
    final _random = Random();
    const _availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();

    return randomString;
  }

  static String? getMimeType(String? extension) {
    String? mimeType;
    mimeType = StaticMimeTypes.extension2mimeTypes[extension];

    return mimeType;
  }

  static String? getPreviewType(String fileName) {
    String fileType = fileName.substring(fileName.lastIndexOf('.') + 1);
    fileType = fileType.toLowerCase();

    List<String> fileTypeList = [
      'txt',
      'doc',
      'docx',
      'xlsx',
      'xls',
      'pdf',
      'wps',
      'wpt',
      'pptx',
      'ppt'
    ];
    List<String> imageTypeList = ['jpg', 'gif', 'png', 'jpeg', 'bmp'];
    List<String> mediaTypeList = ['mp4', 'mp3', 'wav'];
    List<String> refuseMediaTypeList = [];
    // 若为图片 则图片预览
    if (imageTypeList.contains(fileType)) {
      return 'image';
    }
    // 若是文件，则文件预览
    if (fileTypeList.contains(fileType)) {
      return 'file';
    }
    // 若是媒体资源，则媒体预览
    if (mediaTypeList.contains(fileType)) {
      if (refuseMediaTypeList.contains(fileType)) {
        return 'illegalMedia';
      }
      return 'media';
    }
    return null;
  }

  static Future getPermissionBtns() async {
    List getPermissionBtnResponse =
        await requestClient.get(AppApis.getPermissionBtn);
    List array = [];
    getPermissionBtnResponse.toList().forEach((item) {
      array.add(item['code']);
    });
    GlobalConstant.permissionBtns =
        array.join(GlobalConstant.routerSplitCharacter);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('permissionBtns', array.join(routerSplitCharacter));
  }

  ///PermissionGroup.storage 对应的是
  ///android 的外部存储 （External Storage）
  ///ios 的Documents` or `Downloads`
  static Future checkPermissFunction() async {
    if (GlobalConstant.platform == TargetPlatform.android) {
      ///安卓平台中 checkPermissionStatus方法校验是否有储存卡的读写权限
      Permission permission = Permission.storage;
      PermissionStatus status = await permission.status;
      if (status != PermissionStatus.granted) {
        // 无权限那么 调用方法 requestPermissions 申请权限
        // 发起权限申请
        // 返回权限申请的状态 status
        PermissionStatus status = await permission.request();
        if (status.isPermanentlyDenied) {
          openAppSettings();
        } else {
          return true;
        }
      } else {
        return true;
      }
    } else {
      return true;
    }
    return false;
  }

  /// 获取apk存储位置
  static Future<String> apkLocalPath() async {
    final directory = await getExternalStorageDirectory();
    String path = directory!.path + Platform.pathSeparator + 'Download';
    final savedDir = Directory(path);
    bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      await savedDir.create();
    }
    return path;
  }

  static void checkAppVersion(BuildContext context) {
    CheckVersion checkVersion = CheckVersion(Platform.isAndroid, context);
    checkVersion.checkVersionCode();
  }
}
