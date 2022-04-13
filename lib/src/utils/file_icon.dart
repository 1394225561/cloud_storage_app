import '../../iconfont/icon_font.dart';

class FileIcon {
  static IconNames getFileIcon(Map<String, dynamic> file, {int type = 1}) {
    bool isDir = file['isDir'] == 1 ? true : false;
    String fileName = file['fileName'] ?? file['name'];
    if (type == 2 && isDir) {
      return IconNames.groupfolder_color;
    } else if (isDir) {
      return IconNames.folder_color;
    }
    if (fileName != '') {
      int point = fileName.lastIndexOf('.');
      String type = fileName.substring(point + 1).toLowerCase();
      if (type == 'jpg' ||
          type == 'gif' ||
          type == 'png' ||
          type == 'jpeg' ||
          type == 'bmp') {
        return IconNames.picture_color;
      } else if (type == 'avi' ||
          type == 'rmvb' ||
          type == 'rm' ||
          type == 'asf' ||
          type == 'divx' ||
          type == 'mpg' ||
          type == 'mpeg' ||
          type == 'mpe' ||
          type == 'mp4' ||
          type == 'mkv' ||
          type == 'vob' ||
          type == 'wmv') {
        return IconNames.video_color;
      } else if (type == 'WAVE' ||
          type == 'AIFF' ||
          type == 'MPEG' ||
          type == 'MP3' ||
          type == 'MIDI' ||
          type == 'mp3') {
        return IconNames.music_color;
      } else if (type == 'txt') {
        return IconNames.txt_color;
      } else if (type == 'pdf') {
        return IconNames.pdf_color;
      } else if (type == 'doc' || type == 'docx') {
        return IconNames.word_color;
      } else if (type == 'ppt' || type == 'pptx') {
        return IconNames.ppt_color;
      } else if (type == 'xls' || type == 'xlsx') {
        return IconNames.excel_color;
      } else if (type == 'wps' || type == 'wpt') {
        return IconNames.word_color;
      } else if (type == 'zip' || type == 'rar') {
        return IconNames.package_color;
      } else {
        return IconNames.unknown_color;
      }
    }
    return IconNames.unknown_color;
  }
}
