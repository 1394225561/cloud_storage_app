import 'dart:math';

import '../apis/app.dart';
import '/src/utils/http_request.dart';
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

  static Map<String, dynamic> userDetails = {};
  static Map<String, dynamic> sysConfig = {};

  static String routerSplitCharacter = '#%@';
  static String permissionBtns = '';

  static Future getPermissionBtns() async {
    List getPermissionBtnResponse =
        await requestClient.get(AppApis.getPermissionBtn);
    List array = [];
    getPermissionBtnResponse.toList().forEach((item) {
      array.add(item['code']);
    });
    permissionBtns = array.join(routerSplitCharacter);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('permissionBtns', array.join(routerSplitCharacter));
  }
}
