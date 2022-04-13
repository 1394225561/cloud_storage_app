import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  nav_user,
  bumenguanli,
  lanjiedingdan,
  shangxia,
  yanjizhushou_shangchuan_rongliang,
  yujing,
  application_mall,
  jiedong,
  safety,
  public_space,
  details,
  audit,
  my_settings,
  morentouxiang,
  deleted_color_1,
  expired_color_1,
  yuan_3,
  jiami_1,
  jiami,
  file_encryption,
  ppt_color_encryption,
  picture_color_encryp,
  music_color_encrypti,
  pdf_color_encryption,
  package_color_encryp,
  excel_color_encrypti,
  unknown_color_encryp,
  word_color_encryptio,
  groupfolder_color_en,
  txt_color_encryption,
  video_color_encrypti,
  rename,
  upload_new_version,
  view_historical_ver,
  pdf_color,
  package_color,
  music_color,
  excel_color,
  transfer,
  sort,
  copy,
  move,
  file_text_1,
  image_recognition,
  keyboard,
  folder_security,
  voice_1,
  timeout,
  shangchuanzhong,
  taking_pictures,
  take_a_photo,
  tripartite,
  intercept,
  processing,
  subordinate,
  // intercept,
  // processing,
  package_color_1,
  excel_color_1,
  picture_color_1,
  pdf_color_1,
  music_color_1,
  word_color_1,
  ppt_color_1,
  unknown_color_1,
  video_color_1,
  txt_color_1,
  loading,
  ai_223,
  ai_224,
  right,
  down,
  left,
  up,
  double_right,
  double_down,
  double_left,
  double_up,
  caret_down,
  caret_up,
  caret_left,
  caret_right,
  arrow_up,
  arrow_right,
  arrow_down,
  arrow_left,
  arrow_alt,
  arrow_shrink,
  rollback,
  plus_circle,
  plus_circle_o,
  minus_circle_o,
  minus_circle,
  close,
  close_circle_o,
  close_circle,
  check,
  check_circle,
  check_circle_o,
  info_circle,
  info_circle_o,
  info,
  question_circle,
  question,
  question_circle_o,
  exclamation_circle,
  exclamation_circle_o,
  exclamation,
  pause_circle_o,
  plus_square_o,
  minus_square_o,
  play_circle_o,
  appendix,
  heart,
  heart_o,
  desktop,
  calendar,
  delete,
  folder_open,
  edit,
  home,
  user,
  picture,
  upload,
  save,
  search,
  settings,
  quit,
  time,
  filter,
  ellipsis,
  bell,
  bars,
  file_text,
  usergroup,
  star_o,
  star,
  folder,
  folder_add,
  share,
  download,
  plus,
  minus,
  reload,
  user_add,
  user_delete,
  user_right,
  lock,
  unlock,
  logout,
  login,
  mail,
  appstore_o,
  area_chart,
  bar_chart,
  bar_chart_1,
  idcard,
  eye,
  invisibility,
  enlarge,
  logo,
  folder_color,
  groupfolder_color,
  word_color,
  video_color,
  unknown_color,
  txt_color,
  ppt_color,
  picture_color
}

extension parseString on IconNames {
  String serialize() => this.toString().split('.').last;
}

/// A class includes all icons which you provided from https://iconfont.cn
///
/// How to use it:
/// ```dart
/// IconFont(IconNames.xxx);
/// IconFont(IconNames.xxx, color: '#f00');
/// IconFont(IconNames.xxx, colors: ['#f00', 'blue']);
/// IconFont(IconNames.xxx, size: 30, color: '#000');
/// ```
///
/// The name is dynamic to against server interface.
/// Feel free to input string literal.
/// ```dart
/// IconFont('xxx');
/// ```
class IconFont extends StatelessWidget {
  IconNames? name;
  final String? color;
  final List<String>? colors;
  final double size;

  IconFont(dynamic iconName, {this.size = 18, this.color, this.colors}) {
    this.name = getIconNames(iconName);
  }

  static IconNames getIconNames(dynamic iconName) {
    switch (iconName) {
      case 'nav_user':
        iconName = IconNames.nav_user;
        break;
      case 'bumenguanli':
        iconName = IconNames.bumenguanli;
        break;
      case 'lanjiedingdan':
        iconName = IconNames.lanjiedingdan;
        break;
      case 'shangxia':
        iconName = IconNames.shangxia;
        break;
      case 'yanjizhushou_shangchuan_rongliang':
        iconName = IconNames.yanjizhushou_shangchuan_rongliang;
        break;
      case 'yujing':
        iconName = IconNames.yujing;
        break;
      case 'application_mall':
        iconName = IconNames.application_mall;
        break;
      case 'jiedong':
        iconName = IconNames.jiedong;
        break;
      case 'safety':
        iconName = IconNames.safety;
        break;
      case 'public_space':
        iconName = IconNames.public_space;
        break;
      case 'details':
        iconName = IconNames.details;
        break;
      case 'audit':
        iconName = IconNames.audit;
        break;
      case 'my_settings':
        iconName = IconNames.my_settings;
        break;
      case 'morentouxiang':
        iconName = IconNames.morentouxiang;
        break;
      case 'deleted_color_1':
        iconName = IconNames.deleted_color_1;
        break;
      case 'expired_color_1':
        iconName = IconNames.expired_color_1;
        break;
      case 'yuan_3':
        iconName = IconNames.yuan_3;
        break;
      case 'jiami_1':
        iconName = IconNames.jiami_1;
        break;
      case 'jiami':
        iconName = IconNames.jiami;
        break;
      case 'file_encryption':
        iconName = IconNames.file_encryption;
        break;
      case 'ppt_color_encryption':
        iconName = IconNames.ppt_color_encryption;
        break;
      case 'picture_color_encryp':
        iconName = IconNames.picture_color_encryp;
        break;
      case 'music_color_encrypti':
        iconName = IconNames.music_color_encrypti;
        break;
      case 'pdf_color_encryption':
        iconName = IconNames.pdf_color_encryption;
        break;
      case 'package_color_encryp':
        iconName = IconNames.package_color_encryp;
        break;
      case 'excel_color_encrypti':
        iconName = IconNames.excel_color_encrypti;
        break;
      case 'unknown_color_encryp':
        iconName = IconNames.unknown_color_encryp;
        break;
      case 'word_color_encryptio':
        iconName = IconNames.word_color_encryptio;
        break;
      case 'groupfolder_color_en':
        iconName = IconNames.groupfolder_color_en;
        break;
      case 'txt_color_encryption':
        iconName = IconNames.txt_color_encryption;
        break;
      case 'video_color_encrypti':
        iconName = IconNames.video_color_encrypti;
        break;
      case 'rename':
        iconName = IconNames.rename;
        break;
      case 'upload_new_version':
        iconName = IconNames.upload_new_version;
        break;
      case 'view_historical_ver':
        iconName = IconNames.view_historical_ver;
        break;
      case 'pdf_color':
        iconName = IconNames.pdf_color;
        break;
      case 'package_color':
        iconName = IconNames.package_color;
        break;
      case 'music_color':
        iconName = IconNames.music_color;
        break;
      case 'excel_color':
        iconName = IconNames.excel_color;
        break;
      case 'transfer':
        iconName = IconNames.transfer;
        break;
      case 'sort':
        iconName = IconNames.sort;
        break;
      case 'copy':
        iconName = IconNames.copy;
        break;
      case 'move':
        iconName = IconNames.move;
        break;
      case 'file_text_1':
        iconName = IconNames.file_text_1;
        break;
      case 'image_recognition':
        iconName = IconNames.image_recognition;
        break;
      case 'keyboard':
        iconName = IconNames.keyboard;
        break;
      case 'folder_security':
        iconName = IconNames.folder_security;
        break;
      case 'voice_1':
        iconName = IconNames.voice_1;
        break;
      case 'timeout':
        iconName = IconNames.timeout;
        break;
      case 'shangchuanzhong':
        iconName = IconNames.shangchuanzhong;
        break;
      case 'taking_pictures':
        iconName = IconNames.taking_pictures;
        break;
      case 'take_a_photo':
        iconName = IconNames.take_a_photo;
        break;
      case 'tripartite':
        iconName = IconNames.tripartite;
        break;
      case 'intercept':
        iconName = IconNames.intercept;
        break;
      case 'processing':
        iconName = IconNames.processing;
        break;
      case 'subordinate':
        iconName = IconNames.subordinate;
        break;
      case 'intercept':
        iconName = IconNames.intercept;
        break;
      case 'processing':
        iconName = IconNames.processing;
        break;
      case 'package_color_1':
        iconName = IconNames.package_color_1;
        break;
      case 'excel_color_1':
        iconName = IconNames.excel_color_1;
        break;
      case 'picture_color_1':
        iconName = IconNames.picture_color_1;
        break;
      case 'pdf_color_1':
        iconName = IconNames.pdf_color_1;
        break;
      case 'music_color_1':
        iconName = IconNames.music_color_1;
        break;
      case 'word_color_1':
        iconName = IconNames.word_color_1;
        break;
      case 'ppt_color_1':
        iconName = IconNames.ppt_color_1;
        break;
      case 'unknown_color_1':
        iconName = IconNames.unknown_color_1;
        break;
      case 'video_color_1':
        iconName = IconNames.video_color_1;
        break;
      case 'txt_color_1':
        iconName = IconNames.txt_color_1;
        break;
      case 'loading':
        iconName = IconNames.loading;
        break;
      case 'ai_223':
        iconName = IconNames.ai_223;
        break;
      case 'ai_224':
        iconName = IconNames.ai_224;
        break;
      case 'right':
        iconName = IconNames.right;
        break;
      case 'down':
        iconName = IconNames.down;
        break;
      case 'left':
        iconName = IconNames.left;
        break;
      case 'up':
        iconName = IconNames.up;
        break;
      case 'double_right':
        iconName = IconNames.double_right;
        break;
      case 'double_down':
        iconName = IconNames.double_down;
        break;
      case 'double_left':
        iconName = IconNames.double_left;
        break;
      case 'double_up':
        iconName = IconNames.double_up;
        break;
      case 'caret_down':
        iconName = IconNames.caret_down;
        break;
      case 'caret_up':
        iconName = IconNames.caret_up;
        break;
      case 'caret_left':
        iconName = IconNames.caret_left;
        break;
      case 'caret_right':
        iconName = IconNames.caret_right;
        break;
      case 'arrow_up':
        iconName = IconNames.arrow_up;
        break;
      case 'arrow_right':
        iconName = IconNames.arrow_right;
        break;
      case 'arrow_down':
        iconName = IconNames.arrow_down;
        break;
      case 'arrow_left':
        iconName = IconNames.arrow_left;
        break;
      case 'arrow_alt':
        iconName = IconNames.arrow_alt;
        break;
      case 'arrow_shrink':
        iconName = IconNames.arrow_shrink;
        break;
      case 'rollback':
        iconName = IconNames.rollback;
        break;
      case 'plus_circle':
        iconName = IconNames.plus_circle;
        break;
      case 'plus_circle_o':
        iconName = IconNames.plus_circle_o;
        break;
      case 'minus_circle_o':
        iconName = IconNames.minus_circle_o;
        break;
      case 'minus_circle':
        iconName = IconNames.minus_circle;
        break;
      case 'close':
        iconName = IconNames.close;
        break;
      case 'close_circle_o':
        iconName = IconNames.close_circle_o;
        break;
      case 'close_circle':
        iconName = IconNames.close_circle;
        break;
      case 'check':
        iconName = IconNames.check;
        break;
      case 'check_circle':
        iconName = IconNames.check_circle;
        break;
      case 'check_circle_o':
        iconName = IconNames.check_circle_o;
        break;
      case 'info_circle':
        iconName = IconNames.info_circle;
        break;
      case 'info_circle_o':
        iconName = IconNames.info_circle_o;
        break;
      case 'info':
        iconName = IconNames.info;
        break;
      case 'question_circle':
        iconName = IconNames.question_circle;
        break;
      case 'question':
        iconName = IconNames.question;
        break;
      case 'question_circle_o':
        iconName = IconNames.question_circle_o;
        break;
      case 'exclamation_circle':
        iconName = IconNames.exclamation_circle;
        break;
      case 'exclamation_circle_o':
        iconName = IconNames.exclamation_circle_o;
        break;
      case 'exclamation':
        iconName = IconNames.exclamation;
        break;
      case 'pause_circle_o':
        iconName = IconNames.pause_circle_o;
        break;
      case 'plus_square_o':
        iconName = IconNames.plus_square_o;
        break;
      case 'minus_square_o':
        iconName = IconNames.minus_square_o;
        break;
      case 'play_circle_o':
        iconName = IconNames.play_circle_o;
        break;
      case 'appendix':
        iconName = IconNames.appendix;
        break;
      case 'heart':
        iconName = IconNames.heart;
        break;
      case 'heart_o':
        iconName = IconNames.heart_o;
        break;
      case 'desktop':
        iconName = IconNames.desktop;
        break;
      case 'calendar':
        iconName = IconNames.calendar;
        break;
      case 'delete':
        iconName = IconNames.delete;
        break;
      case 'folder_open':
        iconName = IconNames.folder_open;
        break;
      case 'edit':
        iconName = IconNames.edit;
        break;
      case 'home':
        iconName = IconNames.home;
        break;
      case 'user':
        iconName = IconNames.user;
        break;
      case 'picture':
        iconName = IconNames.picture;
        break;
      case 'upload':
        iconName = IconNames.upload;
        break;
      case 'save':
        iconName = IconNames.save;
        break;
      case 'search':
        iconName = IconNames.search;
        break;
      case 'settings':
        iconName = IconNames.settings;
        break;
      case 'quit':
        iconName = IconNames.quit;
        break;
      case 'time':
        iconName = IconNames.time;
        break;
      case 'filter':
        iconName = IconNames.filter;
        break;
      case 'ellipsis':
        iconName = IconNames.ellipsis;
        break;
      case 'bell':
        iconName = IconNames.bell;
        break;
      case 'bars':
        iconName = IconNames.bars;
        break;
      case 'file_text':
        iconName = IconNames.file_text;
        break;
      case 'usergroup':
        iconName = IconNames.usergroup;
        break;
      case 'star_o':
        iconName = IconNames.star_o;
        break;
      case 'star':
        iconName = IconNames.star;
        break;
      case 'folder':
        iconName = IconNames.folder;
        break;
      case 'folder_add':
        iconName = IconNames.folder_add;
        break;
      case 'share':
        iconName = IconNames.share;
        break;
      case 'download':
        iconName = IconNames.download;
        break;
      case 'plus':
        iconName = IconNames.plus;
        break;
      case 'minus':
        iconName = IconNames.minus;
        break;
      case 'reload':
        iconName = IconNames.reload;
        break;
      case 'user_add':
        iconName = IconNames.user_add;
        break;
      case 'user_delete':
        iconName = IconNames.user_delete;
        break;
      case 'user_right':
        iconName = IconNames.user_right;
        break;
      case 'lock':
        iconName = IconNames.lock;
        break;
      case 'unlock':
        iconName = IconNames.unlock;
        break;
      case 'logout':
        iconName = IconNames.logout;
        break;
      case 'login':
        iconName = IconNames.login;
        break;
      case 'mail':
        iconName = IconNames.mail;
        break;
      case 'appstore_o':
        iconName = IconNames.appstore_o;
        break;
      case 'area_chart':
        iconName = IconNames.area_chart;
        break;
      case 'bar_chart':
        iconName = IconNames.bar_chart;
        break;
      case 'bar_chart_1':
        iconName = IconNames.bar_chart_1;
        break;
      case 'idcard':
        iconName = IconNames.idcard;
        break;
      case 'eye':
        iconName = IconNames.eye;
        break;
      case 'invisibility':
        iconName = IconNames.invisibility;
        break;
      case 'enlarge':
        iconName = IconNames.enlarge;
        break;
      case 'logo':
        iconName = IconNames.logo;
        break;
      case 'folder_color':
        iconName = IconNames.folder_color;
        break;
      case 'groupfolder_color':
        iconName = IconNames.groupfolder_color;
        break;
      case 'word_color':
        iconName = IconNames.word_color;
        break;
      case 'video_color':
        iconName = IconNames.video_color;
        break;
      case 'unknown_color':
        iconName = IconNames.unknown_color;
        break;
      case 'txt_color':
        iconName = IconNames.txt_color;
        break;
      case 'ppt_color':
        iconName = IconNames.ppt_color;
        break;
      case 'picture_color':
        iconName = IconNames.picture_color;
        break;
    }
    return iconName;
  }

  static String getColor(int arrayIndex, String? color, List<String>? colors,
      String defaultColor) {
    if (color != null && color.isNotEmpty) {
      return color;
    }

    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }

    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (this.name!) {
      case IconNames.nav_user:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M739.5555552 608.75662187V603.02222187a45.51111147 45.51111147 0 0 1 91.02222293 0v5.7344c16.70257813 4.2780448 32.49493333 10.92266667 46.96746667 19.47875626l4.096-4.096a45.51111147 45.51111147 0 0 1 64.3527104 64.39822187l-4.096 4.05048853c8.55608853 14.47253333 15.20071147 30.26488853 19.47875627 46.96746667H967.11111147a45.51111147 45.51111147 0 0 1 0 91.02222293h-5.7344c-4.2780448 16.70257813-10.92266667 32.49493333-19.47875627 46.96746667l4.096 4.096a45.51111147 45.51111147 0 0 1-64.39822187 64.3527104l-4.05048853-4.096a180.95217813 180.95217813 0 0 1-46.96746667 19.47875627V967.11111147a45.51111147 45.51111147 0 0 1-91.02222293 0v-5.7344a180.95217813 180.95217813 0 0 1-46.96746667-19.47875627l-4.096 4.096a45.51111147 45.51111147 0 0 1-64.3527104-64.3527104l4.096-4.096A180.95217813 180.95217813 0 0 1 608.75662187 830.57777813H603.02222187a45.51111147 45.51111147 0 0 1 0-91.02222293h5.7344c4.2780448-16.70257813 10.92266667-32.49493333 19.47875626-46.96746667l-4.096-4.096a45.51111147 45.51111147 0 0 1 64.39822187-64.3527104l4.05048853 4.096A180.95217813 180.95217813 0 0 1 739.5555552 608.75662187zM479.68711147 876.08888853H56.88888853a45.51111147 45.51111147 0 0 1-45.5111104-45.5111104v-45.51111146a364.08888853 364.08888853 0 0 1 606.79964374-271.42826667A318.39573333 318.39573333 0 0 0 466.48888853 785.06666667c0 31.63022187 4.59662187 62.16817813 13.19822294 91.02222186zM375.46666667 420.97777813c-100.5795552 0-182.0444448-91.70488853-182.0444448-204.8S274.88711147 11.37777813 375.46666667 11.37777813s182.0444448 91.70488853 182.0444448 204.8S476.04622187 420.97777813 375.46666667 420.97777813z m409.6 455.1111104a91.02222187 91.02222187 0 1 0 0-182.04444373 91.02222187 91.02222187 0 0 0 0 182.04444373z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.bumenguanli:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M821.546563 293.170551h97.856655c53.321892 0 96.658411-43.336519 96.65841-96.658411v-97.856655C1016.061628 45.333593 972.72511 1.997075 919.403218 1.997075h-97.856655c-53.321892 0-96.658411 43.336519-96.658411 96.65841v28.258606H549.844564c-36.546465 0-66.302877 29.756412-66.302877 66.302876v296.266017H382.290005V452.337396c0-66.103169-53.82116-119.92433-119.92433-119.924329H131.05802c-66.103169 0-119.92433 53.82116-119.924329 119.924329v131.307655c0 66.103169 53.82116 119.92433 119.924329 119.92433H262.365675c66.103169 0 119.92433-53.82116 119.92433-119.92433v-37.145587h101.251682V842.76548c0 36.546465 29.756412 66.302877 66.302877 66.302877h175.043588v18.273232c0 53.321892 43.336519 96.658411 96.658411 96.658411h97.856655c53.321892 0 96.658411-43.336519 96.65841-96.658411v-97.856655c0-53.321892-43.336519-96.658411-96.65841-96.65841h-97.856655c-53.321892 0-96.658411 43.336519-96.658411 96.65841v22.566943H549.844564c-5.09254 0-9.186543-4.094003-9.186544-9.186543V546.499464h184.230132v20.370161c0 53.321892 43.336519 96.658411 96.658411 96.65841h97.856655c53.321892 0 96.658411-43.336519 96.65841-96.65841v-97.856656c0-53.321892-43.336519-96.658411-96.65841-96.65841h-97.856655c-53.321892 0-96.658411 43.336519-96.658411 96.65841v20.370161H540.65802V193.216967c0-5.09254 4.094003-9.186543 9.186544-9.186543h175.043588v12.58157c0 53.222038 43.336519 96.558557 96.658411 96.558557zM325.173671 583.645051c0 34.649244-28.158752 62.807996-62.807996 62.807996H131.05802c-34.649244 0-62.807996-28.158752-62.807996-62.807996V452.337396c0-34.649244 28.158752-62.807996 62.807996-62.807996H262.365675c34.649244 0 62.807996 28.158752 62.807996 62.807996v131.307655z m456.830815 245.839883c0-21.768113 17.773964-39.542077 39.542077-39.542077h97.856655c21.768113 0 39.542077 17.773964 39.542077 39.542077v97.856655c0 21.768113-17.773964 39.542077-39.542077 39.542078h-97.856655c-21.768113 0-39.542077-17.773964-39.542077-39.542078v-97.856655z m0-360.471965c0-21.768113 17.773964-39.542077 39.542077-39.542077h97.856655c21.768113 0 39.542077 17.773964 39.542077 39.542077v97.856656c0 21.768113-17.773964 39.542077-39.542077 39.542077h-97.856655c-21.768113 0-39.542077-17.773964-39.542077-39.542077v-97.856656z m0-370.357484c0-21.768113 17.773964-39.542077 39.542077-39.542077h97.856655c21.768113 0 39.542077 17.773964 39.542077 39.542077v97.856655c0 21.768113-17.773964 39.542077-39.542077 39.542077h-97.856655c-21.768113 0-39.542077-17.773964-39.542077-39.542077v-97.856655z"
              fill="''' +
                getColor(0, color, colors, '#11AAED') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.lanjiedingdan:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M684.747659 239.176596h81.626626c30.050178 0 54.389775 24.456364 54.389775 54.623307h-0.029191v277.283616a240.503591 240.503591 0 0 1 54.47735 34.948262V293.770711c0-60.335103-48.736362-109.217423-108.865909-109.217423h-81.627842l-381.016694 0.029192H222.073932C161.944386 184.58248 113.208023 233.435608 113.208023 293.799903v546.29267c0 60.335103 48.736362 109.246614 108.865909 109.246614h318.368167a240.720094 240.720094 0 0 1-36.822597-54.622091H222.073932c-30.079369 0-54.418967-24.428389-54.418967-54.624523V293.799903c0-30.166943 24.339598-54.623307 54.418967-54.623307H684.747659z"
              fill="''' +
                getColor(0, color, colors, '#272536') +
                '''"
            />
            <path
              d="M276.52209 758.084025c0 15.113879 12.125404 27.354833 27.179684 27.354833h175.559886c0.282184-18.821195 2.72332-37.116944 7.094741-54.651282H303.701774c-15.05428 0.001216-27.179684 12.18257-27.179684 27.296449zM684.718468 457.669824H303.701774c-15.05428 0-27.179684 12.185003-27.179684 27.326857 0 15.083472 12.125404 27.297666 27.179684 27.297666h381.016694c15.026305 0 27.208875-12.214194 27.208875-27.297666 0-15.141855-12.18257-27.326857-27.208875-27.326857zM527.41176 336.044813H303.701774c-15.05428 0-27.179684 12.185003-27.179684 27.326858 0 15.083472 12.125404 27.297666 27.179684 27.297666h223.709986c15.026305 0 27.208875-12.214194 27.208875-27.297666 0-15.141855-12.18257-27.326857-27.208875-27.326858zM276.52209 621.540961c0 15.111447 12.125404 27.295233 27.179684 27.295234H524.394093a241.69071 241.69071 0 0 1 54.569789-54.653715H303.701774c-15.05428 0.001216-27.179684 12.245818-27.179684 27.358481zM855.404595 656.862631c-75.020841-72.987169-196.706667-72.987169-271.727508 0-75.020841 73.027308-75.020841 191.391388 0 264.462483 75.022058 73.027308 196.707883 73.027308 271.727508 0 75.020841-73.069878 75.020841-191.435176 0-264.462483z m-38.983981 36.908954c47.16124 45.876815 52.975206 116.743955 17.437033 168.806928L642.921159 676.791885c53.556602-34.583368 126.377137-28.937253 173.499455 16.9797zM621.5822 883.42c-47.162456-45.958308-52.933851-116.82788-17.437033-168.889636l190.893917 185.870553c-53.473893 34.500659-126.294428 28.895899-173.456884-16.980917z"
              fill="''' +
                getColor(1, color, colors, '#272536') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.shangxia:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M836.8 633.6H187.2c-32 0-51.2 20.8-35.2 36.8 24 25.6 310.4 324.8 324.8 339.2 17.6 19.2 56 16 72 0C560 998.4 854.4 688 872 670.4c16-17.6-4.8-35.2-35.2-36.8zM187.2 390.4h649.6c30.4 0 51.2-19.2 35.2-36.8-17.6-17.6-312-328-324.8-340.8-14.4-16-52.8-17.6-72 0C462.4 28.8 176 328 152 353.6c-16 16 3.2 36.8 35.2 36.8z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.yanjizhushou_shangchuan_rongliang:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M169.142857 399.542857l682.057143 0 0 231.862857-682.057143 0 0-231.862857Z"
              fill="''' +
            getColor(0, color, colors, '#FFFFFF') +
            '''"
            />
            <path
              d="M169.142857 533.942857l682.057143 0 0 97.28-682.057143 0 0-97.28Z"
              fill="''' +
            getColor(1, color, colors, '#EAEAEA') +
            '''"
            />
            <path
              d="M790.674286 658.285714H229.668571a88.137143 88.137143 0 0 1-87.954285-87.954285v-110.445715a87.954286 87.954286 0 0 1 87.954285-87.771428h561.005715a87.954286 87.954286 0 0 1 87.954285 87.771428v110.994286A88.137143 88.137143 0 0 1 790.674286 658.285714zM229.668571 426.971429a33.097143 33.097143 0 0 0-33.097142 32.914285v110.994286A33.097143 33.097143 0 0 0 229.668571 603.428571h561.005715a33.097143 33.097143 0 0 0 33.097143-33.097142v-110.445715a33.097143 33.097143 0 0 0-33.097143-32.914285z"
              fill="''' +
            getColor(2, color, colors, '#808080') +
            '''"
            />
            <path
              d="M169.142857 631.405714l682.057143 0 0 231.862857-682.057143 0 0-231.862857Z"
              fill="''' +
            getColor(3, color, colors, '#FFFFFF') +
            '''"
            />
            <path
              d="M169.142857 763.611429l682.057143 0 0 99.657142-682.057143 0 0-99.657142Z"
              fill="''' +
            getColor(4, color, colors, '#EAEAEA') +
            '''"
            />
            <path
              d="M790.674286 890.514286H229.668571a87.954286 87.954286 0 0 1-87.954285-87.771429v-110.994286A87.954286 87.954286 0 0 1 229.668571 603.428571h561.005715a87.954286 87.954286 0 0 1 87.954285 87.771429v111.542857a87.954286 87.954286 0 0 1-87.954285 87.771429zM229.668571 658.285714a32.914286 32.914286 0 0 0-33.097142 32.914286v111.542857a33.097143 33.097143 0 0 0 33.097142 32.914286h561.005715a33.097143 33.097143 0 0 0 33.097143-32.914286v-110.994286A32.914286 32.914286 0 0 0 790.674286 658.285714z"
              fill="''' +
            getColor(5, color, colors, '#808080') +
            '''"
            />
            <path
              d="M169.142857 165.851429l682.057143 0 0 231.862857-682.057143 0 0-231.862857Z"
              fill="''' +
            getColor(6, color, colors, '#FFFFFF') +
            '''"
            />
            <path
              d="M169.142857 299.52l682.057143 0 0 98.194286-682.057143 0 0-98.194286Z"
              fill="''' +
            getColor(7, color, colors, '#EAEAEA') +
            '''"
            />
            <path
              d="M790.674286 424.96H229.668571a87.954286 87.954286 0 0 1-87.954285-87.771429v-110.994285a87.954286 87.954286 0 0 1 87.954285-87.771429h561.005715a87.954286 87.954286 0 0 1 87.954285 87.771429v110.994285a87.954286 87.954286 0 0 1-87.954285 87.771429zM229.668571 193.28a33.097143 33.097143 0 0 0-33.097142 32.914286v110.994285a32.914286 32.914286 0 0 0 33.097142 32.914286h561.005715a32.914286 32.914286 0 0 0 33.097143-32.914286v-110.994285a33.097143 33.097143 0 0 0-33.097143-32.914286z"
              fill="''' +
            getColor(8, color, colors, '#808080') +
            '''"
            />
            <path
              d="M290.56 279.222857m-37.485714 0a37.485714 37.485714 0 1 0 74.971428 0 37.485714 37.485714 0 1 0-74.971428 0Z"
              fill="''' +
            getColor(9, color, colors, '#808080') +
            '''"
            />
            <path
              d="M284.342857 515.474286m-37.485714 0a37.485714 37.485714 0 1 0 74.971428 0 37.485714 37.485714 0 1 0-74.971428 0Z"
              fill="''' +
            getColor(10, color, colors, '#808080') +
            '''"
            />
            <path
              d="M279.222857 751.542857m-37.485714 0a37.485714 37.485714 0 1 0 74.971428 0 37.485714 37.485714 0 1 0-74.971428 0Z"
              fill="''' +
            getColor(11, color, colors, '#808080') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.yujing:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M948.659 855.667a80.435 80.435 0 0 1-69.935 40.833h-733.42a80.338 80.338 0 0 1-68.779-121.821l366.706-608.325a80.306 80.306 0 0 1 137.561 0l366.71 608.327a80.475 80.475 0 0 1 1.157 80.986z m-51-50.922l-366.71-608.327a22.106 22.106 0 0 0-37.868 0L126.37 804.745a22.116 22.116 0 0 0 18.934 33.535h733.42a22.114 22.114 0 0 0 18.933-33.535z m-384.828-39.602a41.594 41.594 0 0 1 0-83.188c22.139 0 41.042 18.906 41.042 41.594-0.003 22.151-18.904 41.594-41.042 41.594z m-0.541-120.458c-17.28 0-31.862-7.022-31.864-23.766 0-64.28-7.559-156.648-7.559-220.926 0-21.068 17.28-32.951 39.421-32.951 21.061 0 38.881 11.885 38.881 32.951 0 64.28-7.559 156.647-7.559 220.926-0.003 16.744-18.364 23.766-31.323 23.766z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.application_mall:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M428.8 480H96c-32 0-51.2-19.2-51.2-51.2v-320c0-25.6 19.2-44.8 51.2-44.8h332.8c25.6 0 44.8 19.2 44.8 44.8v320c0 32-19.2 51.2-44.8 51.2zM422.4 985.6H89.6c-25.6 0-44.8-19.2-44.8-44.8v-320c0-25.6 19.2-44.8 44.8-44.8h332.8c25.6 0 44.8 19.2 44.8 44.8v320c6.4 25.6-19.2 44.8-44.8 44.8zM979.2 300.8l-185.6 185.6c-19.2 19.2-51.2 19.2-70.4 0L544 307.2c-19.2-19.2-19.2-51.2 0-70.4L729.6 51.2c19.2-19.2 51.2-19.2 70.4 0l179.2 179.2c12.8 19.2 12.8 51.2 0 70.4zM921.6 985.6H588.8c-25.6 0-44.8-19.2-44.8-44.8v-320c0-25.6 19.2-44.8 44.8-44.8h332.8c25.6 0 44.8 19.2 44.8 44.8v320c6.4 25.6-19.2 44.8-44.8 44.8z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.jiedong:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M723.2 729.6c-32 0-51.2 25.6-51.2 51.2s12.8 38.4 32 44.8V896c0 12.8 12.8 25.6 25.6 25.6s25.6-12.8 25.6-25.6v-70.4c12.8-6.4 32-25.6 32-44.8-12.8-32-32-51.2-64-51.2zM627.2 537.6c57.6-57.6 89.6-140.8 89.6-224 0-83.2-32-160-89.6-224C569.6 32 492.8 0 409.6 0 320 0 243.2 32 185.6 89.6c-57.6 64-96 140.8-96 224 0 83.2 32 160 89.6 224 32 32 76.8 57.6 121.6 76.8-12.8 6.4-25.6 6.4-44.8 19.2-44.8 19.2-83.2 44.8-121.6 83.2-32 32-64 76.8-83.2 121.6-19.2 51.2-32 96-32 147.2 0 19.2 19.2 38.4 44.8 38.4 25.6 0 38.4-19.2 38.4-38.4 0-76.8 32-153.6 89.6-211.2 57.6-51.2 128-70.4 211.2-89.6 89.6-19.2 192-108.8 224-147.2z m-217.6 12.8C281.6 550.4 179.2 448 179.2 320s102.4-230.4 230.4-230.4S640 185.6 640 313.6 537.6 550.4 409.6 550.4z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M844.8 640h-96c6.4-44.8 44.8-76.8 89.6-76.8 32 0 57.6 12.8 76.8 38.4 12.8 12.8 12.8 32 12.8 51.2h64c0-32-6.4-64-25.6-89.6-32-44.8-76.8-70.4-128-70.4-83.2 0-147.2 64-153.6 140.8H601.6c-51.2 6.4-89.6 44.8-89.6 96v185.6c0 51.2 38.4 89.6 89.6 89.6h243.2c51.2 0 89.6-38.4 89.6-89.6v-185.6c0-51.2-38.4-89.6-89.6-89.6z m25.6 275.2c0 12.8-12.8 25.6-25.6 25.6H601.6c-12.8 0-25.6-12.8-25.6-25.6v-185.6c0-12.8 12.8-25.6 25.6-25.6h243.2c12.8 0 25.6 12.8 25.6 25.6v185.6z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.safety:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M518.4 96L870.4 192v403.2l-352 307.2-352-307.2V192l352-96m0-83.2h-12.8l-384 108.8c-25.6 6.4-38.4 25.6-38.4 44.8v441.6c0 12.8 6.4 25.6 12.8 32l384 339.2c6.4 6.4 19.2 12.8 32 12.8s19.2-6.4 32-12.8l384-339.2c12.8-6.4 12.8-19.2 12.8-32V166.4c0-19.2-12.8-38.4-32-44.8L524.8 12.8h-6.4z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M729.6 409.6H556.8V230.4c0-25.6-19.2-38.4-44.8-38.4s-38.4 12.8-38.4 38.4v179.2H294.4c-25.6 0-38.4 19.2-38.4 38.4s19.2 38.4 38.4 38.4h179.2v179.2c0 25.6 19.2 38.4 38.4 38.4s38.4-19.2 38.4-38.4V492.8h179.2c25.6 0 38.4-19.2 38.4-38.4 6.4-25.6-12.8-44.8-38.4-44.8z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.public_space:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 96l281.6 160-281.6 160-281.6-160L512 96m0-89.6c-3.2 0-6.4 0-6.4 3.2L83.2 249.6c-6.4 3.2-6.4 12.8 0 16l419.2 240c3.2 0 3.2 3.2 6.4 3.2s6.4 0 6.4-3.2l419.2-240c6.4-3.2 6.4-12.8 0-16L518.4 6.4H512zM876.8 464v300.8l-240 128v-300.8l240-128m70.4-128h-6.4l-377.6 201.6c-3.2 3.2-6.4 6.4-6.4 12.8v457.6c0 6.4 3.2 9.6 9.6 9.6h6.4l377.6-201.6c3.2-3.2 6.4-6.4 6.4-12.8V345.6c0-3.2-6.4-9.6-9.6-9.6zM153.6 460.8l240 128v300.8l-240-128v-300.8m-70.4-124.8c-6.4 0-9.6 3.2-9.6 9.6v457.6c0 6.4 3.2 9.6 6.4 12.8l377.6 201.6h6.4c6.4 0 9.6-3.2 9.6-9.6V550.4c0-6.4-3.2-9.6-6.4-12.8L89.6 336h-6.4z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.details:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M825.6 825.6c-38.4 38.4-89.6 70.4-140.8 96-51.2 25.6-108.8 32-172.8 32s-115.2-12.8-172.8-32c-51.2-19.2-102.4-51.2-140.8-96-38.4-38.4-70.4-89.6-96-140.8-19.2-57.6-32-115.2-32-172.8s12.8-115.2 32-172.8c25.6-51.2 57.6-96 96-140.8 44.8-38.4 89.6-70.4 140.8-89.6 57.6-25.6 115.2-38.4 172.8-38.4s115.2 12.8 172.8 32c51.2 19.2 102.4 51.2 140.8 96 38.4 38.4 70.4 89.6 96 140.8 25.6 51.2 32 108.8 32 172.8s-12.8 115.2-32 172.8c-25.6 51.2-57.6 96-96 140.8zM512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512-230.4-512-512-512z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M780.8 582.4c-51.2 0-89.6-38.4-89.6-89.6s38.4-89.6 89.6-89.6 89.6 38.4 89.6 89.6-44.8 89.6-89.6 89.6zM512 582.4c-51.2 0-89.6-38.4-89.6-89.6S460.8 403.2 512 403.2s89.6 38.4 89.6 89.6S563.2 582.4 512 582.4z m-268.8 0c-51.2 0-89.6-38.4-89.6-89.6S192 403.2 243.2 403.2s89.6 38.4 89.6 89.6-38.4 89.6-89.6 89.6z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.audit:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M1017.315129 965.855499L895.783642 844.324012c25.585576-44.774758 44.774758-89.549516 44.774758-140.720668 0-134.324275-108.738699-236.666579-236.666579-236.66658C569.567546 466.936764 467.225242 575.675463 467.225242 703.603344c0 134.324275 108.738699 249.459367 236.666579 236.666579 51.171152-6.396394 102.342305-12.792788 140.720669-44.774758l121.531486 121.531486c12.792788 12.792788 31.98197 6.396394 44.774759-6.396394 12.792788-12.792788 12.792788-38.378364 6.396394-44.774758zM531.189182 703.603344c0-95.94591 76.756728-166.306245 166.306245-166.306245s166.306245 76.756728 166.306245 166.306245-76.756728 166.306245-166.306245 166.306244-166.306245-76.756728-166.306245-166.306244z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M639.927881 946.666317H83.4416h-6.396394V76.756728H441.639666V255.855761c0 38.378364 31.98197 70.360334 70.360334 70.360335h179.099033v76.756728H767.855761V255.855761L537.585576 0H83.4416C38.666842 0 0.288477 38.378364 0.288477 76.756728v863.513195c0 44.774758 38.378364 83.153122 83.153123 83.153122H639.927881v-76.756728zM518.396394 95.94591L659.117063 255.855761H518.396394V95.94591z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M166.594722 639.639403h249.459368c19.189182 0 31.98197-12.792788 31.98197-31.98197s-12.792788-38.378364-38.378365-38.378364H166.594722c-19.189182 0-38.378364 19.189182-38.378364 38.378364s19.189182 31.98197 38.378364 31.98197zM166.594722 831.531224h249.459368c19.189182 0 38.378364-19.189182 38.378364-38.378364s-19.189182-38.378364-38.378364-38.378364H166.594722c-19.189182 0-38.378364 19.189182-38.378364 38.378364s19.189182 38.378364 38.378364 38.378364zM416.05409 377.387248H166.594722c-19.189182 0-38.378364 19.189182-38.378364 38.378364s19.189182 38.378364 38.378364 38.378364h249.459368c19.189182 0 38.378364-19.189182 38.378364-38.378364s-19.189182-38.378364-38.378364-38.378364z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.my_settings:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M190.577778 315.733333c0-128 105.244444-233.244444 233.244444-233.244444s233.244444 105.244444 233.244445 233.244444-105.244444 233.244444-233.244445 233.244445-233.244444-105.244444-233.244444-233.244445z m455.111111 221.866667c59.733333-59.733333 91.022222-139.377778 91.022222-221.866667 0-85.333333-31.288889-162.133333-91.022222-221.866666C585.955556 34.133333 509.155556 0 423.822222 0S261.688889 34.133333 201.955556 91.022222C142.222222 150.755556 108.088889 230.4 108.088889 315.733333s31.288889 162.133333 91.022222 221.866667c34.133333 34.133333 76.8 59.733333 122.311111 76.8-17.066667 5.688889-31.288889 8.533333-48.355555 17.066667-45.511111 19.911111-85.333333 45.511111-122.311111 82.488889-34.133333 34.133333-62.577778 76.8-82.488889 122.311111-19.911111 48.355556-31.288889 96.711111-31.288889 147.911111 0 22.755556 17.066667 39.822222 39.822222 39.822222s39.822222-17.066667 39.822222-39.822222c0-79.644444 31.288889-156.444444 88.177778-210.488889s130.844444-71.111111 210.488889-88.177778c91.022222-19.911111 196.266667-110.933333 230.4-147.911111zM807.822222 563.2h-45.511111c-14.222222 0-19.911111 5.688889-19.911111 19.911111v25.6c-11.377778 5.688889-31.288889 14.222222-45.511111 19.911111l-19.911111-14.222222c-5.688889-5.688889-5.688889-5.688889-11.377778-5.688889s-14.222222 0-14.222222 5.688889l-31.288889 31.288889c-5.688889 5.688889-5.688889 19.911111 0 31.288889l19.911111 19.911111c-5.688889 11.377778-14.222222 25.6-19.911111 45.511111H597.333333c-11.377778 0-19.911111 5.688889-19.911111 19.911111v45.511111c0 14.222222 5.688889 19.911111 19.911111 19.911111h25.6c5.688889 11.377778 14.222222 31.288889 19.911111 45.511111l-19.911111 19.911112c-5.688889 5.688889-5.688889 19.911111 0 31.288888l31.288889 31.288889c5.688889 5.688889 5.688889 5.688889 14.222222 5.688889 5.688889 0 11.377778 0 11.377778-5.688889l19.911111-19.911111c11.377778 5.688889 25.6 11.377778 45.511111 19.911111v25.6c0 14.222222 5.688889 19.911111 19.911112 19.911111h45.511111c11.377778 0 19.911111-5.688889 19.911111-19.911111v-25.6c11.377778-5.688889 31.288889-14.222222 45.511111-19.911111l19.911111 19.911111c5.688889 5.688889 5.688889 5.688889 11.377778 5.688889s14.222222 0 14.222222-5.688889l31.288889-31.288889c5.688889-5.688889 5.688889-19.911111 0-31.288888l-14.222222-25.6c5.688889-11.377778 14.222222-25.6 19.911111-45.511112h25.6c11.377778 0 19.911111-5.688889 19.911111-19.911111v-45.511111c0-14.222222-5.688889-19.911111-19.911111-19.911111h-25.6c-5.688889-11.377778-11.377778-31.288889-19.911111-45.511111l19.911111-19.911111c5.688889-5.688889 5.688889-19.911111 0-31.288889l-31.288889-31.288889c-5.688889-5.688889-5.688889-5.688889-11.377778-5.688889s-11.377778 0-11.377778 5.688889l-25.6 25.6c-11.377778-5.688889-25.6-11.377778-45.511111-19.911111v-25.6c-5.688889-14.222222-14.222222-25.6-25.6-25.6z m-19.911111 298.666667c-45.511111 0-82.488889-39.822222-82.488889-82.488889 0-45.511111 39.822222-82.488889 82.488889-82.488889 45.511111 0 82.488889 31.288889 82.488889 76.8 0 51.2-36.977778 88.177778-82.488889 88.177778z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.morentouxiang:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0a512 512 0 1 0 512.1024 511.8976A513.65888 513.65888 0 0 0 512 0z m12.9024 153.6c195.1744 0 195.1744 147.2512 195.1744 230.4s-76.8 236.8512-195.1744 239.9232c-115.2 0-195.1744-153.6-195.1744-239.9232 0-83.1488 0-230.4 195.1744-230.4zM512 995.1232a488.448 488.448 0 0 1-371.2-172.7488c12.9024-31.9488 28.8768-67.2768 51.3024-86.4256 47.9232-38.2976 192-102.2976 192-102.2976l89.7024 172.7488 15.9744-41.5744-25.7024-51.2 51.2-51.3024 51.3024 51.3024-22.528 54.3744 12.8 41.6768 92.8768-169.5744s143.9744 63.8976 192 102.2976c22.4256 15.9744 38.4 44.8512 48.0256 70.3488A475.22816 475.22816 0 0 1 512 995.1232z m0 0"
              fill="''' +
                getColor(0, color, colors, '#BED0FF') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.deleted_color_1:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M192 64h640c35.2 0 64 28.8 64 64v768c0 35.2-28.8 64-64 64H192c-35.2 0-64-28.8-64-64V128c0-35.2 28.8-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192 60.8h640c35.2 0 64 28.8 64 60.8V864c0 35.2-28.8 60.8-64 60.8H192c-35.2 0-64-28.8-64-60.8V124.8c0-35.2 28.8-64 64-64z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M624 723.2c-16 16-32 25.6-51.2 35.2-19.2 9.6-41.6 12.8-64 12.8s-44.8-3.2-64-12.8c-19.2-9.6-38.4-19.2-51.2-35.2-16-16-25.6-32-35.2-51.2-9.6-19.2-12.8-41.6-12.8-64s3.2-44.8 12.8-64c9.6-19.2 19.2-38.4 35.2-51.2 16-16 32-25.6 51.2-35.2 19.2-9.6 41.6-12.8 64-12.8s44.8 3.2 64 12.8c19.2 9.6 38.4 19.2 51.2 35.2 16 16 25.6 32 35.2 51.2 9.6 19.2 12.8 41.6 12.8 64s-3.2 44.8-12.8 64c-9.6 19.2-19.2 38.4-35.2 51.2z m-118.4-320c-112 0-204.8 92.8-204.8 204.8s92.8 204.8 204.8 204.8 204.8-92.8 204.8-204.8-89.6-204.8-204.8-204.8z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
            <path
              d="M528 608l57.6-57.6c6.4-6.4 6.4-16 0-22.4s-16-6.4-22.4 0l-57.6 57.6-57.6-57.6c-6.4-6.4-16-6.4-22.4 0s-6.4 16 0 22.4l57.6 57.6-57.6 57.6c-6.4 6.4-6.4 16 0 22.4 6.4 6.4 16 6.4 22.4 0l57.6-57.6 57.6 57.6c6.4 6.4 16 6.4 22.4 0 6.4-6.4 6.4-16 0-22.4L528 608z"
              fill="''' +
            getColor(3, color, colors, '#707172') +
            '''"
            />
            <path
              d="M670.816 265.632l36.192-36.192 11.328 11.328-36.192 36.16z"
              fill="''' +
            getColor(4, color, colors, '#E4393C') +
            '''"
            />
            <path
              d="M307.2 60.8L896 649.6v-294.4l-294.4-294.4H307.2z m230.4 185.6L480 188.8c-12.8-12.8-9.6-22.4 0-35.2L537.6 96l6.4 9.6-16 16 67.2 67.2 28.8-28.8L544 76.8l9.6-9.6L643.2 160l-51.2 51.2-9.6-9.6 6.4-6.4L521.6 128l-32 32c-6.4 6.4-6.4 12.8 0 19.2L544 233.6c6.4 6.4 12.8 6.4 19.2 3.2 6.4 0 12.8-6.4 19.2-12.8 3.2 3.2 3.2 9.6 6.4 12.8-9.6 6.4-16 12.8-22.4 16-9.6 6.4-19.2 3.2-28.8-6.4z m176 166.4c12.8 0 25.6-3.2 41.6-9.6l3.2 12.8c-16 3.2-28.8 6.4-44.8 9.6 3.2-6.4 0-9.6 0-12.8z m80 73.6h-12.8c0-16 3.2-28.8 3.2-41.6h12.8c-3.2 12.8-3.2 25.6-3.2 41.6z m51.2-134.4l9.6 9.6-3.2 3.2c-6.4 22.4-3.2 41.6 3.2 67.2-6.4 0-9.6 3.2-12.8 3.2-6.4-22.4-6.4-44.8-3.2-67.2-16 3.2-32 3.2-48 3.2l44.8 44.8-6.4 6.4-19.2-19.2-12.8 12.8 28.8 28.8-6.4 6.4-28.8-28.8-28.8 28.8c-9.6 9.6-16 9.6-25.6 0l-12.8-12.8c3.2-3.2 3.2-6.4 6.4-9.6 3.2 3.2 6.4 9.6 9.6 12.8 3.2 3.2 9.6 3.2 12.8 0l25.6-25.6-28.8-28.8 6.4-6.4 28.8 28.8 12.8-12.8-19.2-19.2 6.4-6.4c-6.4 0-9.6 0-16-3.2 0-3.2 3.2-9.6 3.2-12.8 28.8 3.2 51.2 3.2 73.6-3.2z m-35.2-28.8l-6.4 6.4c-16 6.4-28.8 12.8-38.4 19.2-3.2 12.8-6.4 22.4-9.6 28.8-12.8 16-22.4 19.2-32 12.8l-9.6-9.6c3.2-3.2 3.2-6.4 6.4-12.8l9.6 9.6c6.4 3.2 12.8 0 19.2-9.6 3.2-6.4 6.4-16 9.6-28.8 12.8-6.4 25.6-12.8 38.4-22.4l-12.8-12.8-96 96-9.6-9.6L780.8 288l28.8 35.2z m-38.4-51.2l-96 96c-6.4 6.4-16 9.6-22.4 0l-16-16c3.2-3.2 6.4-6.4 6.4-9.6 3.2 6.4 9.6 9.6 12.8 12.8 3.2 3.2 6.4 3.2 12.8 0l92.8-92.8 9.6 9.6z m-25.6-9.6L672 336l-6.4-6.4L736 256l9.6 6.4z m-51.2-54.4l-41.6 41.6 9.6 9.6L704 217.6l25.6 25.6-41.6 41.6 9.6 9.6-6.4 6.4-9.6-9.6-41.6 41.6c-6.4 6.4-12.8 6.4-19.2 0l-9.6-9.6c3.2-3.2 3.2-6.4 6.4-9.6 3.2 3.2 6.4 6.4 6.4 9.6 3.2 3.2 6.4 3.2 9.6 0l41.6-41.6-9.6-9.6-12.8 12.8c-19.2 19.2-35.2 28.8-54.4 32v-12.8c12.8-3.2 28.8-12.8 44.8-28.8l12.8-12.8-9.6-6.4L608 294.4c-6.4 6.4-12.8 6.4-19.2 3.2-3.2-3.2-6.4-6.4-6.4-9.6 3.2-3.2 3.2-6.4 6.4-9.6 0 6.4 3.2 9.6 3.2 9.6 3.2 3.2 6.4 3.2 9.6 0L640 249.6l-9.6-9.6-12.8 12.8c-16 16-35.2 28.8-51.2 32v-12.8c16-3.2 32-12.8 44.8-28.8l9.6-9.6-9.6-9.6 6.4-6.4 9.6 6.4 41.6-41.6 25.6 25.6z"
              fill="''' +
            getColor(5, color, colors, '#E4393C') +
            '''"
            />
            <path
              d="M635.2 231.072l36.224-36.192 11.328 11.296-36.224 36.224z"
              fill="''' +
            getColor(6, color, colors, '#E4393C') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.expired_color_1:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M192 64h640c35.2 0 64 28.8 64 64v768c0 35.2-28.8 64-64 64H192c-35.2 0-64-28.8-64-64V128c0-35.2 28.8-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192 60.8h640c35.2 0 64 28.8 64 60.8V864c0 35.2-28.8 60.8-64 60.8H192c-35.2 0-64-28.8-64-60.8V124.8c0-35.2 28.8-64 64-64z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M624 723.2c-16 16-32 25.6-51.2 35.2-19.2 9.6-41.6 12.8-64 12.8s-44.8-3.2-64-12.8c-19.2-9.6-38.4-19.2-51.2-35.2-16-16-25.6-32-35.2-51.2-9.6-19.2-12.8-41.6-12.8-64s3.2-44.8 12.8-64c9.6-19.2 19.2-38.4 35.2-51.2 16-16 32-25.6 51.2-35.2 19.2-9.6 41.6-12.8 64-12.8s44.8 3.2 64 12.8c19.2 9.6 38.4 19.2 51.2 35.2 16 16 25.6 32 35.2 51.2 9.6 19.2 12.8 41.6 12.8 64s-3.2 44.8-12.8 64c-9.6 19.2-19.2 38.4-35.2 51.2z m-118.4-320c-112 0-204.8 92.8-204.8 204.8s92.8 204.8 204.8 204.8 204.8-92.8 204.8-204.8-89.6-204.8-204.8-204.8z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
            <path
              d="M604.8 608h-83.2v-108.8c0-9.6-6.4-16-16-16s-16 6.4-16 16V608c0 19.2 16 32 32 32h83.2c9.6 0 16-6.4 16-16s-9.6-16-16-16z"
              fill="''' +
            getColor(3, color, colors, '#707172') +
            '''"
            />
            <path
              d="M765.12 334.848l11.328-11.328 22.624 22.656-11.328 11.296zM745.792 353.984l11.328-11.296 22.624 22.624-11.328 11.296zM821.376 386.784l22.656-22.624 22.624 22.624-22.624 22.656zM726.4 373.12l11.328-11.328 22.624 22.624-11.328 11.328z"
              fill="''' +
            getColor(4, color, colors, '#E4393C') +
            '''"
            />
            <path
              d="M313.6 60.8L896 643.2V352l-291.2-291.2H313.6z m224 185.6L480 185.6c-12.8-12.8-9.6-22.4 0-35.2L537.6 96l9.6 9.6-16 16 67.2 67.2 28.8-28.8-80-80 9.6-9.6L646.4 160l-51.2 51.2-9.6-9.6 6.4-9.6-67.2-64-32 32c-6.4 6.4-6.4 12.8 0 19.2l54.4 54.4c6.4 6.4 12.8 6.4 19.2 3.2 3.2 0 9.6-6.4 19.2-12.8 3.2 3.2 3.2 9.6 6.4 12.8-9.6 6.4-16 12.8-22.4 16-9.6 3.2-19.2 3.2-32-6.4z m140.8 147.2v-12.8h38.4v12.8c-12.8 3.2-25.6 3.2-38.4 0z m48 9.6h9.6c0 9.6 3.2 19.2 3.2 25.6h-12.8c3.2-6.4 3.2-16 0-25.6z m156.8-12.8L793.6 480c-9.6 9.6-16 9.6-25.6 0l-12.8-12.8c3.2-3.2 3.2-6.4 6.4-9.6 6.4 6.4 9.6 9.6 9.6 12.8 3.2 3.2 9.6 3.2 12.8 0l22.4-22.4-22.4-22.4c-16 12.8-35.2 22.4-54.4 22.4v-12.8c12.8 0 22.4-3.2 32-9.6 9.6-6.4 22.4-16 38.4-35.2l41.6-41.6 41.6 41.6zM768 297.6l9.6 9.6 12.8-12.8 9.6 6.4-12.8 12.8 22.4 22.4 12.8-12.8 9.6 9.6-12.8 12.8 9.6 9.6-6.4 6.4-9.6-9.6-51.2 51.2 9.6 9.6-6.4 6.4-57.6-57.6 6.4-6.4 9.6 9.6 51.2-51.2-9.6-9.6 3.2-6.4z m-38.4-28.8l22.4-22.4 6.4 9.6-22.4 22.4 19.2 19.2-9.6 9.6-19.2-19.2-44.8 44.8c-9.6 9.6-19.2 9.6-28.8 0l-16-16c3.2-3.2 6.4-6.4 9.6-12.8 6.4 6.4 9.6 12.8 16 16 3.2 3.2 9.6 3.2 16 0l41.6-41.6L672 230.4l9.6-9.6 48 48z m-60.8-89.6l12.8 3.2c0 9.6-3.2 22.4-3.2 35.2-3.2 0-9.6-3.2-12.8-3.2 0-12.8 0-25.6 3.2-35.2z m-6.4 67.2l12.8 3.2c-3.2 19.2-3.2 32-6.4 41.6l-12.8-3.2c3.2-12.8 6.4-28.8 6.4-41.6z m-57.6 28.8c0 12.8 3.2 22.4 12.8 35.2l28.8 28.8 35.2 32c-3.2 3.2-9.6 3.2-12.8 6.4l-32-32-28.8-28.8c-12.8-12.8-19.2-25.6-16-41.6h-25.6l3.2-12.8h25.6L633.6 224l-12.8-12.8 6.4-6.4 22.4 22.4-44.8 48z"
              fill="''' +
            getColor(5, color, colors, '#E4393C') +
            '''"
            />
            <path
              d="M838.4 416l-22.4-22.4-22.4 22.4 22.4 22.4 22.4-22.4z"
              fill="''' +
            getColor(6, color, colors, '#E4393C') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.yuan_3:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 159.99804687c-180.3515625 0-326.53125 146.1796875-326.53125 326.53125001 0 180.3515625 146.1796875 326.53125 326.53125 326.53124999s326.53125-146.1796875 326.53125-326.53124999C838.53125 306.17773437 692.3515625 159.99804687 512 159.99804687zM512 783.79296875c-164.21484375 0-297.26367188-133.04882813-297.26367188-297.26367188S347.78515625 189.265625 512 189.265625s297.26367188 133.04882813 297.26367188 297.26367188S676.21484375 783.79296875 512 783.79296875z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M512 486.52929687m-185.25585938 1e-8a90.45696259 90.45696259 0 1 0 370.51171876 0 90.45696259 90.45696259 0 1 0-370.51171876 0Z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.jiami_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M763.213164 900.691099H260.786836c-61.271503 0-110.288706-55.144353-110.288706-116.415856v-349.247569c0-67.398654 49.017203-116.415856 110.288706-116.415856h30.635752c0-12.254301-6.12715-30.635752-6.12715-42.890053v-49.017203c0-122.543007 98.034405-226.704562 226.704562-226.704562 122.543007 0 226.704562 98.034405 226.704562 226.704562v42.890053c0 18.381451 0 30.635752-6.12715 42.890052h30.635752c61.271503 0 110.288706 55.144353 110.288706 116.415857v349.247569c0 73.525804-49.017203 122.543007-110.288706 122.543006z m-294.103216-281.848915v104.161556c0 24.508601 18.381451 42.890052 42.890052 42.890052s42.890052-18.381451 42.890052-42.890052v-104.161556c24.508601-18.381451 42.890052-42.890052 42.890053-79.652954 6.12715-42.890052-36.762902-85.780105-85.780105-85.780105s-91.907255 42.890052-91.907255 91.907255c0 30.635752 18.381451 61.271503 49.017203 73.525804z m177.687359-392.137622c0-73.525804-61.271503-134.797307-134.797307-134.797307s-134.797307 61.271503-134.797307 134.797307v91.907256h269.594614v-91.907256z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.jiami:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M791.2 959.1H232.8c-63.1 0-114.5-51.3-114.5-114.5v-390c0-63.1 51.3-114.5 114.5-114.5h558.3c63.1 0 114.5 51.3 114.5 114.5v390.1c0 63.1-51.3 114.4-114.4 114.4zM232.8 399.8c-30.2 0-54.8 24.6-54.8 54.8v390.1c0 30.2 24.6 54.8 54.8 54.8h558.3c30.2 0 54.8-24.6 54.8-54.8V454.6c0-30.2-24.6-54.8-54.8-54.8H232.8z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M512 599.2m-82.4 0a82.4 82.4 0 1 0 164.8 0 82.4 82.4 0 1 0-164.8 0Z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M725.3 370h-59.7v-91.8c0-70-47.2-131.2-114.9-148.7-25.3-6.6-52.3-6.5-77.5 0-67.6 17.6-114.9 78.7-114.9 148.7V370h-59.7v-91.8c0-97.2 65.6-182.1 159.6-206.5 35-9.1 72.4-9.1 107.5 0 94 24.4 159.6 109.3 159.6 206.5V370zM509.5 780.3c-18 0-32.6-14.6-32.6-32.6V631.8c0-18 14.6-32.6 32.6-32.6s32.6 14.6 32.6 32.6v115.9c-0.1 18-14.7 32.6-32.6 32.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.file_encryption:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M76.8 166.4v64h358.4l-19.2-64s0-6.4-6.4-6.4h-6.4l-326.4 6.4c0-6.4 0-6.4 0 0zM1024 812.8v51.2V512h-76.8V307.2H76.8v563.2h518.4v76.8H768 76.8c-44.8 0-76.8-32-76.8-76.8v-704c0-44.8 38.4-76.8 76.8-76.8h326.4c19.2 0 38.4 6.4 57.6 19.2s25.6 32 32 51.2l19.2 64h435.2c38.4-6.4 76.8 32 76.8 70.4v428.8"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M972.8 665.6c-6.4-70.4-64-128-134.4-128s-128 51.2-134.4 121.6c-25.6 12.8-51.2 38.4-51.2 70.4v160c0 44.8 32 76.8 76.8 76.8h204.8c44.8 0 76.8-32 76.8-76.8v-160c0-25.6-19.2-51.2-38.4-64z m-134.4-64c32 0 64 25.6 70.4 51.2h-147.2c12.8-32 38.4-51.2 76.8-51.2z m115.2 288c0 6.4-6.4 19.2-19.2 19.2h-204.8c-6.4 0-19.2-6.4-19.2-19.2v-160c0-6.4 6.4-19.2 19.2-19.2h204.8c6.4 0 19.2 6.4 19.2 19.2v160z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 729.6c-25.6 0-44.8 19.2-44.8 44.8 0 19.2 12.8 32 25.6 38.4v57.6c0 12.8 12.8 19.2 19.2 19.2 12.8 0 19.2-12.8 19.2-19.2v-57.6c12.8-6.4 25.6-19.2 25.6-38.4 0-25.6-19.2-44.8-44.8-44.8z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ppt_color_encryption:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 288h32c102.4 0 192 83.2 192 192V512H512V288z m-32 64v192h192c0 102.4-83.2 192-192 192s-192-83.2-192-192 83.2-192 192-192z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.picture_color_encryp:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M646.4 467.2c-44.8 0-76.8-38.4-76.8-76.8s38.4-76.8 76.8-76.8 76.8 38.4 76.8 76.8-32 76.8-76.8 76.8z m-121.6 179.2l64-83.2c6.4-6.4 12.8-6.4 25.6 0l108.8 147.2c6.4 6.4 0 19.2 0 25.6H230.4c-6.4 0-19.2-6.4-19.2-19.2v-6.4l160-243.2c12.8-12.8 25.6-12.8 32-6.4l6.4 6.4 115.2 179.2z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.music_color_encrypti:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M672 294.4v121.6L524.8 384v320c0 19.2-12.8 32-32 51.2-19.2 12.8-44.8 12.8-70.4 12.8-19.2 0-38.4 0-51.2-19.2-12.8-12.8-19.2-25.6-19.2-51.2 0-19.2 6.4-32 19.2-44.8 12.8-6.4 32-12.8 51.2-19.2h38.4c6.4 0 19.2 0 25.6-12.8 6.4-6.4 12.8-19.2 12.8-25.6V256l172.8 38.4z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.pdf_color_encryption:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M736 582.4c-51.2-25.6-128-19.2-128-19.2l-44.8-44.8c-25.6-25.6-38.4-57.6-38.4-57.6 51.2-147.2 12.8-172.8-12.8-172.8-25.6 6.4-51.2 32-51.2 70.4s32 108.8 32 108.8-6.4 44.8-25.6 70.4c-19.2 32-51.2 70.4-51.2 70.4s-76.8 12.8-115.2 51.2c-44.8 44.8-6.4 83.2 38.4 70.4 44.8-12.8 96-102.4 96-102.4s44.8-19.2 83.2-25.6c44.8-6.4 64-6.4 64-6.4s38.4 70.4 108.8 83.2c76.8 19.2 102.4-64 44.8-96m-377.6 102.4c-12.8 12.8-25.6 25.6-32 19.2-6.4 0 0-19.2 12.8-32S384 640 384 640s-19.2 32-25.6 44.8m121.6-332.8c0-32 19.2-32 19.2-32 19.2 6.4 12.8 38.4 12.8 57.6 0 6.4-12.8 38.4-12.8 38.4s-19.2-44.8-19.2-64m19.2 243.2c-12.8 0-51.2 12.8-51.2 12.8s12.8-12.8 25.6-44.8 19.2-51.2 19.2-51.2 19.2 32 25.6 44.8c6.4 12.8 25.6 32 25.6 32-6.4 0-32 0-44.8 6.4m236.8 64c-6.4 19.2-25.6 19.2-38.4 6.4-19.2-12.8-57.6-57.6-57.6-57.6h38.4c25.6 6.4 64 19.2 57.6 51.2"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.package_color_encryp:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M448 480V512h128v-32H448z m64-128h96V384H512v-32z m0-64h96V320H512v-32z m0-64h96V256H512v-32z m0-64h96V192H512v-32z m0-64h96V128H512v-32zM416 320H512v32H416V320z m0-64H512v32H416V256z m0-64H512v32H416V192z m0-64H512v32H416V128zM512 416h96V576h-192V384H512v32z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.excel_color_encrypti:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M608 480h128v64h-128v-64z m0-128h128v64h-128v-64zM448 608h128v64H448v-64z m0-128h128v64H448v-64z m0-128h128v64H448v-64z m-160 256h128v64h-128v-64z m0-128h128v64h-128v-64z m0-128h128v64h-128v-64z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.unknown_color_encryp:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M518.4 582.4H512v-44.8c0-12.8 6.4-25.6 19.2-44.8s12.8-32 19.2-44.8c0-12.8 6.4-25.6 6.4-38.4 0-25.6-6.4-44.8-12.8-51.2s-25.6-19.2-38.4-19.2c-12.8 0-19.2 0-25.6 6.4-6.4 0-6.4 6.4-6.4 12.8 0 0 0 6.4 6.4 12.8 6.4 12.8 12.8 25.6 12.8 38.4 0 6.4 0 19.2-6.4 25.6-12.8 6.4-19.2 6.4-25.6 6.4-12.8 0-19.2 0-25.6-12.8-12.8-6.4-12.8-12.8-12.8-25.6 0-19.2 6.4-44.8 25.6-57.6 19.2-12.8 44.8-25.6 83.2-25.6 38.4 0 64 6.4 83.2 25.6 19.2 19.2 25.6 38.4 25.6 64 0 19.2-6.4 32-12.8 51.2s-32 25.6-57.6 51.2c-19.2 6.4-32 19.2-38.4 32-6.4 0-6.4 19.2-12.8 38.4z m0 38.4c12.8 0 25.6 6.4 32 12.8s12.8 19.2 12.8 32-6.4 25.6-12.8 32c-6.4 12.8-19.2 12.8-32 12.8s-25.6-6.4-32-12.8-12.8-19.2-12.8-32 6.4-25.6 12.8-32 19.2-12.8 32-12.8z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.word_color_encryptio:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M288 608h320v64h-320v-64z m0-128h448v64h-448v-64z m0-128h448v64h-448v-64z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.groupfolder_color_en:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M76.8 166.4v64h358.4l-19.2-64s0-6.4-6.4-6.4h-6.4l-326.4 6.4c0-6.4 0-6.4 0 0zM1024 812.8v51.2V512h-76.8V307.2H76.8v563.2h518.4v76.8H768 76.8c-44.8 0-76.8-32-76.8-76.8v-704c0-44.8 38.4-76.8 76.8-76.8h326.4c19.2 0 38.4 6.4 57.6 19.2s25.6 32 32 51.2l19.2 64h435.2c38.4-6.4 76.8 32 76.8 70.4v428.8"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M972.8 665.6c-6.4-70.4-64-128-134.4-128s-128 51.2-134.4 121.6c-25.6 12.8-51.2 38.4-51.2 70.4v160c0 44.8 32 76.8 76.8 76.8h204.8c44.8 0 76.8-32 76.8-76.8v-160c0-25.6-19.2-51.2-38.4-64z m-134.4-64c32 0 64 25.6 70.4 51.2h-147.2c12.8-32 38.4-51.2 76.8-51.2z m115.2 288c0 6.4-6.4 19.2-19.2 19.2h-204.8c-6.4 0-19.2-6.4-19.2-19.2v-160c0-6.4 6.4-19.2 19.2-19.2h204.8c6.4 0 19.2 6.4 19.2 19.2v160z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 729.6c-25.6 0-44.8 19.2-44.8 44.8 0 19.2 12.8 32 25.6 38.4v57.6c0 12.8 12.8 19.2 19.2 19.2 12.8 0 19.2-12.8 19.2-19.2v-57.6c12.8-6.4 25.6-19.2 25.6-38.4 0-25.6-19.2-44.8-44.8-44.8z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M652.8 480m-76.8 0a76.8 76.8 0 1 0 153.6 0 76.8 76.8 0 1 0-153.6 0Z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
            <path
              d="M224 787.2c0-160 64-192 140.8-192s147.2 32 147.2 192H224z"
              fill="''' +
            getColor(4, color, colors, '#333333') +
            '''"
            />
            <path
              d="M364.8 480m-76.8 0a76.8 76.8 0 1 0 153.6 0 76.8 76.8 0 1 0-153.6 0Z"
              fill="''' +
            getColor(5, color, colors, '#333333') +
            '''"
            />
            <path
              d="M729.6 659.2h32c-25.6-51.2-57.6-64-108.8-64-76.8 0-140.8 32-140.8 192h147.2v-51.2c-6.4-44.8 32-76.8 70.4-76.8z"
              fill="''' +
            getColor(6, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.txt_color_encryption:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M684.8 320v102.4h-12.8c-6.4-25.6-12.8-38.4-19.2-51.2s-19.2-12.8-32-19.2c-6.4 0-19.2-6.4-38.4-6.4h-25.6V678.4c0 6.4 6.4 6.4 12.8 12.8 6.4 0 12.8 6.4 25.6 6.4h12.8v6.4H409.6v-12.8h12.8c12.8 0 19.2 0 25.6-6.4 6.4 0 6.4-6.4 12.8-12.8s0-19.2 0-32V345.6h-32c-25.6 0-44.8 6.4-57.6 12.8-19.2 12.8-25.6 38.4-32 64V326.4l345.6-6.4z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M627.2 902.4H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6z m96-729.6l76.8 76.8h-70.4s-6.4 0-6.4-6.4V172.8z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4z"
              fill="''' +
            getColor(3, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.video_color_encrypti:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M838.4 211.2l-89.6-89.6-57.6-57.6H192c-32 0-64 32-64 64v768c0 32 25.6 64 64 64h435.2v-57.6H192s-6.4 0-6.4-6.4V128s0-6.4 6.4-6.4h473.6v121.6c0 32 25.6 64 64 64h108.8V512h57.6V268.8l-57.6-57.6z m-108.8 38.4c-6.4 0-6.4 0 0 0l-6.4-76.8 76.8 76.8h-70.4z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M953.6 678.4c-6.4-57.6-57.6-108.8-115.2-108.8s-108.8 44.8-115.2 102.4c-25.6 12.8-44.8 32-44.8 64v128c0 38.4 32 70.4 70.4 70.4h166.4c38.4 0 70.4-32 70.4-70.4v-128c0-25.6-12.8-44.8-32-57.6z m-115.2-57.6c32 0 57.6 19.2 64 44.8h-128c6.4-25.6 32-44.8 64-44.8z m96 243.2c0 12.8-12.8 19.2-19.2 19.2h-166.4c-12.8 0-19.2-12.8-19.2-19.2v-121.6c0-12.8 12.8-19.2 19.2-19.2h166.4c12.8 0 19.2 12.8 19.2 19.2v121.6z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M832 736c-19.2 0-38.4 19.2-38.4 38.4 0 12.8 6.4 25.6 19.2 32v51.2c0 12.8 6.4 19.2 19.2 19.2 12.8 0 19.2-6.4 19.2-19.2v-51.2c12.8-6.4 19.2-19.2 19.2-32 0-25.6-19.2-38.4-38.4-38.4zM512 288C390.4 288 288 384 288 512S384 736 512 736 736 640 736 512 633.6 288 512 288z m96 230.4c0 6.4-6.4 6.4 0 0L473.6 608c-12.8 6.4-19.2 6.4-25.6-6.4V435.2c0-6.4 6.4-19.2 19.2-19.2h6.4l128 83.2c6.4 6.4 6.4 12.8 6.4 19.2z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.rename:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M921.6 537.6v326.4h-832v-704h371.2c19.2 0 44.8-19.2 44.8-38.4s-25.6-51.2-44.8-51.2H83.2c-38.4 0-76.8 32-76.8 64v742.4c0 38.4 38.4 64 76.8 64h851.2c38.4 0 76.8-25.6 76.8-64V537.6c0-25.6-19.2-44.8-38.4-44.8-25.6 6.4-44.8 19.2-51.2 44.8z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M371.2 652.8c-12.8-12.8-12.8-44.8 0-57.6l492.8-492.8c12.8-12.8 44.8-12.8 57.6 0s12.8 44.8 0 57.6l-492.8 486.4c-19.2 25.6-44.8 25.6-57.6 6.4z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.upload_new_version:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M483.2 896H128V128h768v336c0 22.4 19.2 41.6 41.6 41.6 22.4 0 41.6-19.2 41.6-41.6V118.4c0-41.6-28.8-76.8-64-76.8H105.6c-35.2 0-64 35.2-64 76.8v787.2c0 41.6 28.8 76.8 64 76.8h377.6c22.4 0 41.6-19.2 41.6-41.6 0-25.6-19.2-44.8-41.6-44.8z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M604.8 348.8H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h393.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM604.8 540.8H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h393.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM444.8 739.2H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h233.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM960 713.6l-144-176c-16-19.2-48-19.2-60.8 0l-144 176c-12.8 16-12.8 41.6 6.4 57.6 16 12.8 41.6 12.8 57.6-6.4l70.4-86.4v275.2c0 22.4 19.2 41.6 41.6 41.6s41.6-19.2 41.6-41.6v-275.2l70.4 86.4c6.4 9.6 19.2 16 32 16 9.6 0 19.2-3.2 25.6-9.6 12.8-12.8 16-38.4 3.2-57.6z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.view_historical_ver:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M483.2 896H128V128h768v336c0 22.4 19.2 41.6 41.6 41.6 22.4 0 41.6-19.2 41.6-41.6V118.4c0-41.6-28.8-76.8-64-76.8H105.6c-35.2 0-64 35.2-64 76.8v787.2c0 41.6 28.8 76.8 64 76.8h377.6c22.4 0 41.6-19.2 41.6-41.6 0-25.6-19.2-44.8-41.6-44.8z"
              fill="''' +
            getColor(0, color, colors, '#333333') +
            '''"
            />
            <path
              d="M604.8 348.8H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h393.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM604.8 540.8H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h393.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM444.8 739.2H211.2c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h233.6c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM771.2 595.2c96 0 176 80 176 176s-80 176-176 176-176-80-176-176 80-176 176-176m0-64c-131.2 0-240 108.8-240 240s108.8 240 240 240 240-108.8 240-240-105.6-240-240-240z"
              fill="''' +
            getColor(1, color, colors, '#333333') +
            '''"
            />
            <path
              d="M867.2 806.4h-128v-128c0-19.2 12.8-32 32-32s32 12.8 32 32v64h64c19.2 0 32 12.8 32 32s-12.8 32-32 32z"
              fill="''' +
            getColor(2, color, colors, '#333333') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.pdf_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M737.452 583.517c-51.402-25.498-128.78-17.307-128.78-17.307s-25.358-24.629-47.094-48.38c-21.735-23.748-37.069-58.05-37.069-58.05 52.594-146.456 16.501-174.875-14.554-171.526-24.456 2.641-48.908 30.346-46.192 69.928 2.72 39.582 33.966 109.511 33.966 109.511s-14.946 40.9-31.245 72.238c-16.304 31.334-47.419 68.241-47.419 68.241s-77.224 15.211-112.888 54.794c-41.354 45.903-5.432 84.44 40.756 69.928 46.191-14.516 94.311-104.324 94.311-104.324s45.55-18.072 84.675-23.99c41.436-6.263 66.51-6.837 66.51-6.837s41.151 69.178 107.721 83.694c66.564 14.512 93.735-69.928 37.302-97.92m-380.089 99.862c-10.486 14.237-27.205 24.504-35.14 19.204-4.728-3.153-2.551-17.216 12.752-34.104S384 640 384 640s-18.141 31.842-26.637 43.379m122.712-331.108C478.612 320.766 499.033 320 499.033 320c19.242 4.993 11.507 40.896 11.048 52.992-0.458 12.097-13.403 43.008-13.403 43.008s-15.597-42.081-16.603-63.729m18.096 242.677C484.146 598.151 448 608 448 608s12.008-15.397 25.541-42.508C487.073 538.381 493.397 512 493.397 512s19.009 34.38 26.147 44.85C526.643 567.267 544 588.67 544 588.67c-8.17 0.476-29.716 2.594-45.829 6.278m236.732 62.31c-4.749 15.981-27.203 19.475-40.156 7.991C680.262 652.403 640 608 640 608s20.529 1.061 40.93 3.305c20.401 2.25 62.374 17.689 53.973 45.953"
              fill="''' +
            getColor(2, color, colors, '#E4393C') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.package_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M448 480v32h128v-32H448z m64-128h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96V96z m-96 224h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96v-32z m0-64h96v32h-96V64z m96 352h96v160H416V384h96v32z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.music_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M672 292.2v121.539l-144.882-31.031v318.063c0 18.099-10.08 33.831-30.237 47.193C476.725 761.349 452.787 768 425.072 768c-20.995 0-38.429-6.244-52.284-18.743C358.93 736.782 352 720.623 352 700.771c0-17.242 6.93-32.108 20.788-44.608 13.855-12.474 31.29-20.041 52.284-22.629h36.536c9.242 0 17.429-3.876 24.566-11.634 7.14-7.757 10.708-16.352 10.708-25.856V256L672 292.2z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.excel_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M608 608h128v64H608v-64z m0-128h128v64H608v-64z m0-128h128v64H608v-64zM448 608h128v64H448v-64z m0-128h128v64H448v-64z m0-128h128v64H448v-64zM288 608h128v64H288v-64z m0-128h128v64H288v-64z m0-128h128v64H288v-64z"
              fill="''' +
            getColor(2, color, colors, '#319A14') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.transfer:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M341.333 273.673L185.308 429.699c-16.662 16.662-43.677 16.662-60.34 0-16.662-16.663-16.662-43.677 0-60.34L336.157 158.17a42.657 42.657 0 0 1 10.156-7.524C353.485 137.172 367.671 128 384 128c23.564 0 42.667 19.103 42.667 42.667v682.667C426.667 876.897 407.564 896 384 896s-42.667-19.103-42.667-42.667v-579.66z m341.334 467.189l156.026-156.026c16.663-16.663 43.677-16.663 60.34 0 16.662 16.662 16.662 43.677 0 60.34l-211.19 211.19a42.915 42.915 0 0 1-5.921 4.945C678.187 881.062 660.838 896 640 896c-23.564 0-42.667-19.103-42.667-42.667V170.667C597.333 147.103 616.436 128 640 128s42.667 19.103 42.667 42.667v570.195z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.sort:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M128 170.667h426.667c23.564 0 42.667 19.103 42.667 42.667S578.231 256 554.667 256H128c-23.564 0-42.667-19.103-42.667-42.667s19.103-42.666 42.667-42.666z m0 298.666h426.667c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667H128c-23.564 0-42.667-19.103-42.667-42.667s19.103-42.667 42.667-42.667zM128 768h426.667c23.564 0 42.667 19.102 42.667 42.667 0 23.564-19.103 42.667-42.667 42.667H128c-23.564 0-42.667-19.102-42.667-42.667S104.436 768 128 768z m640-57.308l125.856-125.856c16.662-16.663 43.677-16.663 60.34 0 16.663 16.662 16.663 43.677 0 60.34l-181.02 181.02a42.58 42.58 0 0 1-12.796 8.812c-7.707 11.076-20.53 18.326-35.047 18.326-23.564 0-42.667-19.102-42.667-42.667V213.333c0-23.564 19.103-42.667 42.667-42.667S768 189.769 768 213.333v497.359z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.copy:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M896 597.333h-85.333v-512H213.333v853.333h256V1024h-256C166.205 1024 128 985.795 128 938.667V85.333C128 38.205 166.205 0 213.333 0h597.333C857.795 0 896 38.205 896 85.333v512zM682.667 810.667v-85.333c0-23.564 19.103-42.667 42.667-42.667S768 701.769 768 725.333v85.333h85.333c23.564 0 42.667 19.102 42.667 42.667S876.897 896 853.333 896H768v85.333c0 23.564-19.103 42.667-42.667 42.667s-42.667-19.103-42.667-42.667V896h-85.333c-23.564 0-42.667-19.103-42.667-42.667s19.103-42.667 42.667-42.667h85.334z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.move:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M554.667 192.628v276.705h276.705l-47.843-47.843c-16.662-16.662-16.662-43.677 0-60.34 16.663-16.663 43.677-16.663 60.34 0l120.68 120.679c16.663 16.663 16.663 43.677 0 60.34l-120.68 120.679c-16.662 16.662-43.677 16.662-60.34 0-16.662-16.662-16.662-43.677 0-60.34l47.843-47.843H554.667V831.37l47.843-47.843c16.662-16.662 43.677-16.662 60.34 0 16.663 16.662 16.663 43.677 0 60.34L542.17 964.548c-16.663 16.662-43.677 16.662-60.34 0l-120.679-120.68c-16.662-16.662-16.662-43.677 0-60.34s43.677-16.662 60.34 0l47.843 47.843V554.667H192.628l47.843 47.843c16.662 16.662 16.662 43.677 0 60.34s-43.677 16.662-60.34 0L59.452 542.17c-16.662-16.663-16.662-43.677 0-60.34l120.68-120.679c16.662-16.663 43.677-16.663 60.34 0 16.662 16.662 16.662 43.677 0 60.34l-47.843 47.843h276.705V192.628l-47.843 47.843c-16.662 16.662-43.677 16.662-60.34 0-16.662-16.663-16.662-43.677 0-60.34L481.83 59.452c16.663-16.663 43.677-16.663 60.34 0l120.679 120.68c16.663 16.662 16.663 43.677 0 60.34-16.662 16.662-43.677 16.662-60.34 0l-47.842-47.844z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.file_text_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M1024 812.8h-128v-128h-83.2v128h-128V896h128v128H896v-128h128M294.4 454.4h249.6c19.2 0 38.4-19.2 38.4-38.4s-19.2-38.4-38.4-38.4H294.4c-19.2 0-38.4 19.2-38.4 38.4s19.2 38.4 38.4 38.4zM294.4 832h249.6c19.2 0 38.4-19.2 38.4-38.4s-19.2-38.4-38.4-38.4H294.4c-19.2 0-38.4 19.2-38.4 38.4s19.2 38.4 38.4 38.4zM294.4 640h441.6c19.2 0 38.4-19.2 38.4-38.4s-19.2-38.4-38.4-38.4H294.4c-19.2 6.4-38.4 25.6-38.4 44.8s19.2 32 38.4 32z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M819.2 608H896V256l-230.4-256H211.2C166.4 0 128 38.4 128 76.8v864c0 44.8 38.4 83.2 83.2 83.2H576v-76.8H211.2h-6.4V76.8H569.6V256c0 38.4 32 70.4 70.4 70.4h179.2v281.6z m-172.8-358.4V96L787.2 256h-140.8z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.image_recognition:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M128 322.56V133.12h194.56V46.08H128C81.92 46.08 40.96 81.92 40.96 133.12v194.56h87.04zM706.56 133.12h194.56v194.56h87.04V133.12c0-46.08-35.84-87.04-87.04-87.04h-194.56v87.04zM317.44 901.12H128v-194.56H40.96v194.56c0 46.08 35.84 87.04 87.04 87.04h194.56v-87.04zM896 706.56v194.56h-194.56v87.04h194.56c46.08 0 87.04-35.84 87.04-87.04v-194.56h-87.04zM358.4 481.28c-71.68 0-133.12-56.32-133.12-133.12S286.72 220.16 358.4 220.16s133.12 56.32 133.12 133.12S430.08 481.28 358.4 481.28zM358.4 307.2c-25.6 0-46.08 20.48-46.08 46.08s20.48 46.08 46.08 46.08 46.08-20.48 46.08-46.08S384 307.2 358.4 307.2z"
              fill="''' +
            getColor(0, color, colors, '#999999') +
            '''"
            />
            <path
              d="M440.32 839.68H220.16c-20.48 0-40.96-10.24-51.2-30.72-15.36-20.48-15.36-40.96-5.12-61.44l112.64-194.56c20.48-35.84 87.04-35.84 107.52 0l112.64 194.56c10.24 20.48 10.24 40.96 0 61.44-10.24 20.48-30.72 30.72-56.32 30.72z m-179.2-87.04h138.24l-71.68-122.88-66.56 122.88z"
              fill="''' +
            getColor(1, color, colors, '#999999') +
            '''"
            />
            <path
              d="M783.36 839.68H450.56c-20.48 0-40.96-10.24-51.2-30.72-10.24-20.48-10.24-40.96 0-61.44L563.2 460.8c20.48-35.84 87.04-35.84 107.52 0l163.84 286.72c10.24 20.48 10.24 40.96 0 61.44-10.24 20.48-30.72 30.72-51.2 30.72z m-291.84-87.04h250.88l-122.88-215.04-128 215.04z"
              fill="''' +
            getColor(2, color, colors, '#999999') +
            '''"
            />
            <path
              d="M87.04 322.56m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(3, color, colors, '#999999') +
            '''"
            />
            <path
              d="M317.44 87.04m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(4, color, colors, '#999999') +
            '''"
            />
            <path
              d="M706.56 87.04m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(5, color, colors, '#999999') +
            '''"
            />
            <path
              d="M936.96 322.56m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(6, color, colors, '#999999') +
            '''"
            />
            <path
              d="M936.96 706.56m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(7, color, colors, '#999999') +
            '''"
            />
            <path
              d="M706.56 942.08m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(8, color, colors, '#999999') +
            '''"
            />
            <path
              d="M317.44 942.08m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(9, color, colors, '#999999') +
            '''"
            />
            <path
              d="M87.04 706.56m-40.96 0a40.96 40.96 0 1 0 81.92 0 40.96 40.96 0 1 0-81.92 0Z"
              fill="''' +
            getColor(10, color, colors, '#999999') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.keyboard:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M128 256v512h768V256H128z m777.6-86.4c41.6 0 76.8 28.8 76.8 64v553.6c0 35.2-35.2 64-76.8 64H118.4c-41.6 0-76.8-28.8-76.8-64V233.6c0-35.2 35.2-64 76.8-64h787.2z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M284.8 419.2h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM444.8 419.2h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM604.8 419.2h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM764.8 419.2h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM284.8 553.6h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM444.8 553.6h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM604.8 553.6h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM764.8 553.6h-32c-22.4 0-41.6-19.2-41.6-41.6 0-22.4 19.2-41.6 41.6-41.6h32c22.4 0 41.6 19.2 41.6 41.6 0 22.4-19.2 41.6-41.6 41.6zM777.6 694.4H246.4c-19.2 0-35.2-16-35.2-35.2v-16c0-19.2 16-35.2 35.2-35.2h534.4c19.2 0 35.2 16 35.2 35.2v16c-3.2 19.2-19.2 35.2-38.4 35.2z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.folder_security:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M76.8 166.4v64h358.4l-19.2-64s0-6.4-6.4-6.4h-6.4l-326.4 6.4c0-6.4 0-6.4 0 0zM1024 812.8v51.2V512h-76.8V307.2H76.8V870.4h518.4v76.8H768 76.8c-44.8 0-76.8-32-76.8-76.8v-704c0-44.8 38.4-76.8 76.8-76.8h326.4c19.2 0 38.4 6.4 57.6 19.2 19.2 12.8 25.6 32 32 51.2l19.2 64h435.2c38.4-6.4 76.8 32 76.8 70.4v428.8"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M832 537.6h-44.8c-12.8 0-19.2 6.4-19.2 19.2v25.6c-12.8 6.4-32 12.8-44.8 19.2l-19.2-12.8c-6.4-6.4-6.4-6.4-12.8-6.4s-12.8 0-12.8 6.4l-32 32c-6.4 6.4-6.4 19.2 0 32l19.2 19.2c-6.4 12.8-12.8 25.6-19.2 44.8h-25.6c-12.8 0-19.2 6.4-19.2 19.2v44.8c0 12.8 6.4 19.2 19.2 19.2h25.6c6.4 12.8 12.8 32 19.2 44.8l-19.2 19.2c-6.4 6.4-6.4 19.2 0 32l32 32c6.4 6.4 6.4 6.4 12.8 6.4s12.8 0 12.8-6.4l19.2-19.2c12.8 6.4 25.6 12.8 44.8 19.2v25.6c0 12.8 6.4 19.2 19.2 19.2h44.8c12.8 0 19.2-6.4 19.2-19.2v-25.6c12.8-6.4 32-12.8 44.8-19.2l19.2 19.2c6.4 6.4 6.4 6.4 12.8 6.4s12.8 0 12.8-6.4l32-32c6.4-6.4 6.4-19.2 0-32l-12.8-25.6c6.4-12.8 12.8-25.6 19.2-44.8h25.6c12.8 0 19.2-6.4 19.2-19.2v-44.8c0-12.8-6.4-19.2-19.2-19.2h-25.6c-6.4-12.8-12.8-32-19.2-44.8l19.2-19.2c6.4-6.4 6.4-19.2 0-32l-32-32c-6.4-6.4-6.4-6.4-12.8-6.4s-12.8 0-12.8 6.4l-25.6 25.6c-12.8-6.4-25.6-12.8-44.8-19.2v-25.6c0-12.8-6.4-25.6-19.2-25.6z m-19.2 300.8c-44.8 0-83.2-38.4-83.2-83.2s38.4-83.2 83.2-83.2 83.2 32 83.2 76.8c0 51.2-38.4 89.6-83.2 89.6z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.voice_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 614.4c-128 0-230.4-102.4-230.4-230.4V224C288 102.4 390.4 0 512 0s230.4 102.4 230.4 230.4V384c0 128-102.4 230.4-230.4 230.4zM512 96c-76.8 0-134.4 57.6-134.4 134.4v160c0 76.8 57.6 134.4 134.4 134.4s134.4-57.6 134.4-134.4V224c6.4-70.4-57.6-128-134.4-128z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M896 473.6c0-25.6-19.2-44.8-44.8-44.8-25.6 0-44.8 19.2-44.8 44.8 0 134.4-140.8 236.8-268.8 236.8h-64c-121.6 0-268.8-102.4-268.8-236.8 0-25.6-19.2-44.8-44.8-44.8s-44.8 19.2-44.8 44.8c0 188.8 188.8 329.6 358.4 332.8v128h-38.4c-25.6 0-44.8 19.2-44.8 44.8 0 25.6 19.2 44.8 44.8 44.8h166.4c25.6 0 44.8-19.2 44.8-44.8 0-25.6-19.2-44.8-44.8-44.8h-38.4v-121.6-6.4c166.4-9.6 345.6-147.2 332.8-332.8z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.timeout:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M823.466667 823.466667C782.933333 864 736 896 682.666667 917.333333c-53.333333 23.466667-110.933333 34.133333-170.666667 34.133334s-117.333333-10.666667-170.666667-34.133334c-53.333333-21.333333-100.266667-53.333333-140.8-93.866666C160 782.933333 128 736 106.666667 682.666667c-23.466667-53.333333-34.133333-110.933333-34.133334-170.666667s10.666667-117.333333 34.133334-170.666667c21.333333-53.333333 53.333333-100.266667 93.866666-140.8C241.066667 160 288 128 341.333333 106.666667c53.333333-23.466667 110.933333-34.133333 170.666667-34.133334s117.333333 10.666667 170.666667 34.133334c53.333333 21.333333 100.266667 53.333333 140.8 93.866666 40.533333 40.533333 72.533333 87.466667 93.866666 140.8 23.466667 53.333333 34.133333 110.933333 34.133334 170.666667s-10.666667 117.333333-34.133334 170.666667c-21.333333 53.333333-53.333333 100.266667-93.866666 140.8zM512 0C228.266667 0 0 228.266667 0 512s228.266667 512 512 512 512-228.266667 512-512S795.733333 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M390.4 285.866667v454.4c0 12.8 14.933333 19.2 23.466667 10.666666l281.6-226.133333c6.4-6.4 6.4-17.066667 0-21.333333L416 273.066667c-10.666667-6.4-25.6 0-25.6 12.8"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.shangchuanzhong:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M822.4 822.4c-38.4 41.6-86.4 73.6-140.8 96-54.4 22.4-112 35.2-169.6 35.2s-118.4-12.8-172.8-35.2C288 896 240 864 201.6 822.4 160 784 128 736 105.6 684.8c-22.4-54.4-35.2-112-35.2-172.8s12.8-118.4 35.2-172.8C128 288 160 240 201.6 201.6 240 160 288 128 339.2 105.6c54.4-22.4 112-35.2 172.8-35.2s118.4 12.8 172.8 35.2c51.2 22.4 99.2 54.4 137.6 96 41.6 38.4 73.6 86.4 96 137.6 22.4 54.4 35.2 112 35.2 172.8s-12.8 118.4-35.2 172.8c-22.4 51.2-54.4 99.2-96 137.6zM512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#D9D9D9') +
                '''"
            />
            <path
              d="M592 352h32c19.2 0 32 12.8 32 32v256c0 19.2-12.8 32-32 32h-32c-19.2 0-32-12.8-32-32v-256c0-19.2 12.8-32 32-32zM400 352h32c19.2 0 32 12.8 32 32v256c0 19.2-12.8 32-32 32h-32c-19.2 0-32-12.8-32-32v-256c0-19.2 12.8-32 32-32z"
              fill="''' +
                getColor(1, color, colors, '#707172') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.taking_pictures:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M527.991562 0.274733C233.749533-9.320116-9.319969 233.749386 0.27488 527.991415 9.869729 796.64718 227.352967 1014.130419 496.008733 1023.725267c297.440312 9.594849 537.311531-233.474653 527.716682-527.716682C1014.130566 227.35282 796.647328 9.869581 527.991562 0.274733z"
              fill="''' +
                getColor(0, color, colors, '#FFFFFF') +
                '''"
            />
            <path
              d="M201.766704 512c0 172.707278 140.724449 310.233443 310.233443 310.233443s310.233443-140.724449 310.233444-310.233443c0-172.707278-140.724449-310.233443-310.233444-310.233443S201.766704 339.292722 201.766704 512z"
              fill="''' +
                getColor(1, color, colors, '#E4393C') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.take_a_photo:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M527.991562 0.274733C233.749533-9.320116-9.319969 233.749386 0.27488 527.991415 9.869729 796.64718 227.352967 1014.130419 496.008733 1023.725267c297.440312 9.594849 537.311531-233.474653 527.716682-527.716682C1014.130566 227.35282 796.647328 9.869581 527.991562 0.274733z"
              fill="''' +
                getColor(0, color, colors, '#FFFFFF') +
                '''"
            />
            <path
              d="M512.000147 950.16476C272.128928 950.16476 73.835387 755.069502 73.835387 512S272.128928 73.83524 512.000147 73.83524 950.164908 272.128781 950.164908 512 755.06965 950.16476 512.000147 950.16476z m0-802.769013C310.508323 147.395747 147.395894 310.508176 147.395894 512c0 201.491824 163.112429 367.802536 367.802536 367.802536S879.802684 713.491824 879.802684 512 713.491972 147.395747 512.000147 147.395747z"
              fill="''' +
                getColor(1, color, colors, '#E4393C') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.tripartite:
        svgXml =
            '''
          <svg viewBox="0 0 1029 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M650.24 174.08c-35.84-35.84-81.92-56.32-138.24-56.32s-102.4 20.48-138.24 56.32c-35.84 35.84-56.32 87.04-56.32 143.36 0 56.32 20.48 102.4 56.32 138.24C409.6 491.52 455.68 512 512 512c51.2 0 102.4-20.48 138.24-56.32 35.84-35.84 56.32-87.04 56.32-138.24 0-56.32-20.48-107.52-56.32-143.36z m209.92 737.28c-10.24-87.04-46.08-158.72-102.4-220.16-61.44-66.56-148.48-102.4-245.76-102.4s-184.32 40.96-245.76 102.4c-56.32 56.32-92.16 133.12-102.4 220.16h696.32z m35.84 71.68h-768c-20.48 0-35.84-15.36-35.84-35.84 0-117.76 46.08-225.28 122.88-302.08 40.96-46.08 92.16-81.92 148.48-102.4-15.36-10.24-25.6-20.48-40.96-35.84-51.2-46.08-76.8-117.76-76.8-189.44 0-76.8 30.72-143.36 76.8-194.56S440.32 40.96 512 40.96c71.68 0 143.36 30.72 189.44 81.92 46.08 51.2 76.8 117.76 76.8 194.56S747.52 460.8 701.44 512c-10.24 10.24-25.6 25.6-40.96 35.84 56.32 20.48 107.52 56.32 148.48 97.28 76.8 76.8 122.88 184.32 122.88 302.08 0 20.48-15.36 35.84-35.84 35.84z m-808.96-256h40.96c25.6 0 40.96 20.48 40.96 40.96s-15.36 40.96-40.96 40.96H40.96c-20.48 0-40.96-15.36-40.96-40.96 0-112.64 61.44-215.04 158.72-266.24-46.08-35.84-76.8-97.28-76.8-158.72 0-117.76 92.16-215.04 209.92-215.04 25.6 0 40.96 20.48 40.96 40.96 0 25.6-20.48 40.96-40.96 40.96-71.68 0-128 56.32-128 128s56.32 128 128 128c25.6 0 40.96 20.48 40.96 40.96 0 25.6-20.48 40.96-40.96 40.96-97.28 5.12-184.32 81.92-204.8 179.2z m645.12-174.08c-25.6 0-40.96-20.48-40.96-40.96 0-25.6 20.48-40.96 40.96-40.96 71.68 0 128-56.32 128-128s-56.32-128-128-128c-25.6 0-40.96-20.48-40.96-40.96 0-25.6 20.48-40.96 40.96-40.96 117.76 0 209.92 97.28 209.92 215.04 0 66.56-30.72 122.88-71.68 163.84 92.16 51.2 158.72 148.48 158.72 266.24 0 25.6-20.48 40.96-40.96 40.96h-87.04c-25.6 0-40.96-20.48-40.96-40.96s20.48-40.96 40.96-40.96h40.96c-25.6-107.52-112.64-184.32-209.92-184.32z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.intercept:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M822.044444 822.044444c-39.822222 39.822222-88.177778 71.111111-139.377777 93.866667-54.044444 22.755556-110.933333 34.133333-170.666667 34.133333s-116.622222-11.377778-170.666667-34.133333c-51.2-22.755556-99.555556-54.044444-139.377777-93.866667-39.822222-39.822222-71.111111-88.177778-93.866667-139.377777-22.755556-54.044444-34.133333-110.933333-34.133333-170.666667s11.377778-116.622222 34.133333-170.666667c22.755556-51.2 54.044444-99.555556 93.866667-139.377777 39.822222-39.822222 88.177778-71.111111 139.377777-93.866667 54.044444-22.755556 110.933333-34.133333 170.666667-34.133333s116.622222 11.377778 170.666667 34.133333c51.2 22.755556 99.555556 54.044444 139.377777 93.866667 39.822222 39.822222 71.111111 88.177778 93.866667 139.377777 22.755556 54.044444 34.133333 110.933333 34.133333 170.666667s-11.377778 116.622222-34.133333 170.666667c-19.911111 54.044444-51.2 99.555556-93.866667 139.377777zM512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M253.155556 773.688889c-14.222222-14.222222-14.222222-34.133333 0-48.355556L719.644444 256c14.222222-14.222222 36.977778-14.222222 51.2 0s14.222222 36.977778 0 51.2L307.2 773.688889c-17.066667 14.222222-39.822222 14.222222-54.044444 0z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.processing:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M822.044444 822.044444c-39.822222 39.822222-88.177778 71.111111-139.377777 93.866667-54.044444 22.755556-110.933333 34.133333-170.666667 34.133333s-116.622222-11.377778-170.666667-34.133333c-51.2-22.755556-99.555556-54.044444-139.377777-93.866667-39.822222-39.822222-71.111111-88.177778-93.866667-139.377777-22.755556-54.044444-34.133333-110.933333-34.133333-170.666667s11.377778-116.622222 34.133333-170.666667c22.755556-51.2 54.044444-99.555556 93.866667-139.377777 39.822222-39.822222 88.177778-71.111111 139.377777-93.866667 54.044444-22.755556 110.933333-34.133333 170.666667-34.133333s116.622222 11.377778 170.666667 34.133333c51.2 22.755556 99.555556 54.044444 139.377777 93.866667 39.822222 39.822222 71.111111 88.177778 93.866667 139.377777 22.755556 54.044444 34.133333 110.933333 34.133333 170.666667s-11.377778 116.622222-34.133333 170.666667c-19.911111 54.044444-51.2 99.555556-93.866667 139.377777zM512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M802.133333 512h-256V213.333333c0-19.911111-17.066667-36.977778-36.977777-36.977777s-36.977778 17.066667-36.977778 36.977777v369.777778h327.111111c19.911111 0 36.977778-17.066667 36.977778-36.977778s-14.222222-34.133333-34.133334-34.133333z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.subordinate:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M563.2 662.4h339.2c41.6 0 76.8-28.8 76.8-64v-169.6c0-35.2-35.2-64-76.8-64 0 0-339.2 0-339.2-3.2-41.6 0-76.8 28.8-76.8 64v32H233.6V313.6h227.2c41.6 0 76.8-28.8 76.8-64V80c0-35.2-35.2-64-76.8-64 0 0-339.2 0-339.2-3.2-41.6 0-76.8 28.8-76.8 64v172.8c0 35.2 35.2 64 76.8 64h25.6V896h336v48c0 35.2 35.2 64 76.8 64h339.2c41.6 0 76.8-28.8 76.8-64v-169.6c0-35.2-35.2-64-76.8-64 0 0-339.2 0-339.2-3.2-41.6 0-76.8 28.8-76.8 64v38.4H233.6v-272h252.8v57.6c0 38.4 35.2 67.2 76.8 67.2z m9.6-214.4h320v128h-320v-128zM131.2 99.2h320v128h-320v-128z m441.6 697.6h320v128h-320v-128z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.intercept:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512-230.4-512-512-512z m256 307.2l-460.8 467.2c-19.2 12.8-38.4 12.8-51.2 0s-12.8-32 0-51.2L716.8 256c12.8-12.8 38.4-12.8 51.2 0s19.2 38.4 0 51.2z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.processing:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512-230.4-512-512-512z m288 582.4H473.6V211.2c0-19.2 12.8-32 38.4-32s32 12.8 32 32V512h256c19.2 0 32 12.8 32 32s-12.8 38.4-32 38.4z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.package_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M449.422222 480.711111V512h128v-31.288889h-128z m62.577778-128h96.711111v31.288889H512v-31.288889z m0-65.422222h96.711111v31.288889H512v-31.288889z m0-62.577778h96.711111V256H512V224.711111z m0-65.422222h96.711111v31.288889H512V159.288889z m0-62.577778h96.711111v31.288889H512V96.711111z m-96.711111 221.866667H512v31.288889h-96.711111v-31.288889z m0-62.577778H512v31.288889h-96.711111V256z m0-62.577778H512v31.288889h-96.711111V193.422222z m0-65.422222H512v31.288889h-96.711111V128z m0-65.422222H512v31.288889h-96.711111V62.577778zM512 415.288889h96.711111v159.288889h-193.422222v-193.422222H512v34.133333z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.excel_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M608.711111 608.711111h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z m-159.288889 256h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z m-162.133333 256h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z m0-128h128v62.577778h-128v-62.577778z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.picture_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M648.533333 469.333333c-45.511111 0-79.644444-36.977778-79.644444-79.644444s36.977778-79.644444 79.644444-79.644445 79.644444 36.977778 79.644445 79.644445-34.133333 79.644444-79.644445 79.644444z m-85.333333 176.355556l62.577778-85.333333c5.688889-5.688889 14.222222-8.533333 22.755555-2.844445l2.844445 2.844445 110.933333 147.911111c5.688889 5.688889 2.844444 17.066667-2.844444 22.755555-2.844444 2.844444-5.688889 2.844444-8.533334 2.844445H270.222222c-8.533333 0-17.066667-8.533333-17.066666-17.066667 0-2.844444 0-5.688889 2.844444-8.533333l162.133333-241.777778c5.688889-8.533333 14.222222-8.533333 22.755556-5.688889 2.844444 0 2.844444 2.844444 5.688889 5.688889 0 2.844444 116.622222 179.2 116.622222 179.2z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.pdf_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M736.711111 583.111111c-51.2-25.6-128-17.066667-128-17.066667l-48.355555-48.355555c-22.755556-22.755556-36.977778-56.888889-36.977778-56.888889 51.2-145.066667 17.066667-173.511111-14.222222-170.666667-25.6 2.844444-48.355556 31.288889-45.511112 71.111111 2.844444 39.822222 34.133333 108.088889 34.133334 108.088889s-14.222222 39.822222-31.288889 71.111111c-17.066667 31.288889-48.355556 68.266667-48.355556 68.266667s-76.8 14.222222-113.777777 54.044445c-42.666667 45.511111-5.688889 85.333333 39.822222 71.111111 45.511111-14.222222 93.866667-105.244444 93.866666-105.244445s45.511111-17.066667 85.333334-22.755555c42.666667-5.688889 65.422222-5.688889 65.422222-5.688889s39.822222 68.266667 108.088889 82.488889c71.111111 14.222222 96.711111-71.111111 39.822222-99.555556M358.4 682.666667c-11.377778 14.222222-28.444444 25.6-34.133333 19.911111-5.688889-2.844444-2.844444-17.066667 11.377777-34.133334s48.355556-28.444444 48.355556-28.444444-17.066667 31.288889-25.6 42.666667m122.311111-329.955556c-2.844444-31.288889 19.911111-31.288889 19.911111-31.288889 19.911111 5.688889 11.377778 39.822222 11.377778 54.044445 0 11.377778-14.222222 42.666667-14.222222 42.666666s-17.066667-45.511111-17.066667-65.422222m17.066667 241.777778c-14.222222 2.844444-51.2 14.222222-51.2 14.222222s11.377778-14.222222 25.6-42.666667 19.911111-54.044444 19.911111-54.044444 19.911111 34.133333 25.6 45.511111c5.688889 11.377778 25.6 31.288889 25.6 31.288889-8.533333 0-28.444444 2.844444-45.511111 5.688889m236.088889 62.577778c-5.688889 17.066667-28.444444 19.911111-39.822223 8.533333-14.222222-14.222222-54.044444-56.888889-54.044444-56.888889s19.911111 0 39.822222 2.844445c22.755556 2.844444 62.577778 17.066667 54.044445 45.511111"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.music_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M671.288889 292.977778v122.311111l-145.066667-31.288889v318.577778c0 17.066667-11.377778 34.133333-31.288889 48.355555-19.911111 14.222222-45.511111 19.911111-71.111111 19.911111-19.911111 0-39.822222-5.688889-51.2-19.911111-14.222222-11.377778-19.911111-28.444444-19.911111-48.355555 0-17.066667 5.688889-31.288889 19.911111-45.511111 14.222222-11.377778 31.288889-19.911111 51.2-22.755556h36.977778c8.533333 0 17.066667-2.844444 25.6-11.377778 8.533333-8.533333 11.377778-17.066667 11.377778-25.6V256l173.511111 36.977778z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.word_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M287.288889 608.711111h318.577778v62.577778H287.288889v-62.577778z m0-128h449.422222v62.577778H287.288889v-62.577778z m0-128h449.422222v62.577778H287.288889v-62.577778z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ppt_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 290.133333c11.377778-2.844444 19.911111-2.844444 31.288889-2.844444 105.244444 0 193.422222 85.333333 193.422222 193.422222 0 11.377778 0 22.755556-2.844444 31.288889H512v-221.866667z m-31.288889 62.577778v193.422222h193.422222c0 105.244444-85.333333 193.422222-193.422222 193.422223s-193.422222-85.333333-193.422222-193.422223 85.333333-193.422222 193.422222-193.422222z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.unknown_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M520.533333 580.266667h-11.377777c0-19.911111 0-36.977778 2.844444-45.511111 2.844444-11.377778 8.533333-25.6 17.066667-42.666667s17.066667-31.288889 19.911111-42.666667c2.844444-11.377778 5.688889-25.6 5.688889-39.822222 0-25.6-5.688889-42.666667-14.222223-54.044444-8.533333-11.377778-19.911111-17.066667-34.133333-17.066667-11.377778 0-19.911111 2.844444-25.6 8.533333-5.688889 2.844444-8.533333 8.533333-8.533333 14.222222 0 2.844444 2.844444 8.533333 5.688889 14.222223 8.533333 14.222222 11.377778 25.6 11.377777 36.977777 0 8.533333-2.844444 17.066667-8.533333 22.755556-5.688889 5.688889-14.222222 8.533333-22.755555 8.533333-11.377778 0-19.911111-2.844444-25.6-11.377777-8.533333-8.533333-11.377778-17.066667-11.377778-28.444445 0-22.755556 8.533333-42.666667 28.444444-56.888889 19.911111-17.066667 45.511111-25.6 79.644445-25.6 36.977778 0 65.422222 8.533333 82.488889 25.6 19.911111 17.066667 28.444444 36.977778 28.444444 62.577778 0 17.066667-5.688889 34.133333-14.222222 48.355556s-28.444444 31.288889-56.888889 51.2c-19.911111 11.377778-31.288889 22.755556-36.977778 34.133333-5.688889 2.844444-8.533333 17.066667-11.377778 36.977778z m-2.844444 39.822222c11.377778 0 22.755556 5.688889 31.288889 14.222222 8.533333 8.533333 14.222222 19.911111 14.222222 31.288889 0 11.377778-5.688889 22.755556-14.222222 31.288889-8.533333 11.377778-19.911111 14.222222-31.288889 14.222222-11.377778 0-22.755556-5.688889-31.288889-14.222222-8.533333-8.533333-14.222222-19.911111-14.222222-31.288889 0-11.377778 5.688889-22.755556 14.222222-31.288889 8.533333-8.533333 19.911111-14.222222 31.288889-14.222222z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.video_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 287.288889c-122.311111 0-224.711111 99.555556-224.711111 224.711111s99.555556 224.711111 224.711111 224.711111 224.711111-99.555556 224.711111-224.711111-102.4-224.711111-224.711111-224.711111z m93.866667 233.244444c0 2.844444-2.844444 2.844444-5.688889 5.688889l-128 82.488889c-8.533333 5.688889-17.066667 2.844444-22.755556-5.688889-2.844444-2.844444-2.844444-5.688889-2.844444-8.533333v-162.133333c0-8.533333 8.533333-17.066667 17.066666-17.066667 2.844444 0 5.688889 0 8.533334 2.844444l128 82.488889c5.688889 2.844444 8.533333 11.377778 5.688889 19.911111z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.txt_color_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M682.666667 321.422222V426.666667h-11.377778c-5.688889-22.755556-11.377778-39.822222-19.911111-51.2-8.533333-11.377778-17.066667-19.911111-31.288889-25.6-8.533333-2.844444-19.911111-5.688889-36.977778-5.688889h-28.444444v292.977778c0 19.911111 0 31.288889 2.844444 36.977777 2.844444 5.688889 5.688889 8.533333 11.377778 11.377778 5.688889 2.844444 14.222222 5.688889 25.6 5.688889h11.377778v11.377778h-199.111111v-11.377778h11.377777c11.377778 0 19.911111-2.844444 25.6-5.688889 5.688889-2.844444 8.533333-8.533333 11.377778-14.222222 2.844444-5.688889 2.844444-17.066667 2.844445-34.133333V344.177778h-28.444445c-25.6 0-45.511111 5.688889-56.888889 17.066666-17.066667 14.222222-25.6 36.977778-31.288889 65.422223v-102.4h341.333334z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M839.111111 210.488889l-88.177778-88.177778-56.888889-56.888889H193.422222c-34.133333 0-62.577778 28.444444-62.577778 62.577778v768c0 34.133333 28.444444 62.577778 62.577778 62.577778h640c34.133333 0 62.577778-28.444444 62.577778-62.577778V267.377778l-56.888889-56.888889z m-39.822222 39.822222h-71.111111c-2.844444 0-5.688889-2.844444-5.688889-5.688889V170.666667l76.8 79.644444z m34.133333 651.377778H193.422222c-2.844444 0-5.688889-2.844444-5.688889-5.688889v-768c0-2.844444 2.844444-5.688889 5.688889-5.688889h472.177778v122.311111c0 34.133333 28.444444 62.577778 62.577778 62.577778h110.933333v588.8c0 2.844444-2.844444 5.688889-5.688889 5.688889z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.loading:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M822.4 201.6c41.6 38.4 73.6 86.4 96 137.6 22.4 54.4 35.2 112 35.2 172.8H1024c0-281.6-230.4-512-512-512v70.4c60.8 0 118.4 12.8 169.6 35.2 54.4 22.4 102.4 54.4 140.8 96z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ai_223:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M161.422298 550.654841l77.896037 0 0-77.896037-77.896037 0L161.422298 550.654841zM161.422298 706.47966l77.896037 0 0-77.886827-77.896037 0L161.422298 706.47966zM239.367453 862.304479l0-77.937992-77.946179 0C161.422298 827.26651 196.468454 862.304479 239.367453 862.304479M161.422298 394.870955l77.896037 0 0-77.886827-77.896037 0L161.422298 394.870955zM628.862986 862.304479l77.87864 0 0-77.88785-77.87864 0L628.862986 862.304479zM784.687805 161.158286l-389.545674 0c-42.849881 0-77.88785 35.028759-77.88785 77.88785l0 77.88785 0 77.936969 0 233.720856c0 42.791553 35.037969 77.886827 77.88785 77.886827l194.806606 0 155.7757 0 38.964391 0c42.792576 0 77.88785-35.095274 77.88785-77.886827l0-389.545674C862.575655 196.188068 827.480381 161.158286 784.687805 161.158286M784.687805 628.592833l-389.545674 0 0-389.545674 389.545674 0L784.687805 628.592833zM473.096495 862.304479l77.871477 0 0-77.88785-77.871477 0L473.096495 862.304479zM317.255304 862.304479l77.88785 0 0-77.88785-77.88785 0L317.255304 862.304479z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ai_224:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M392.997283 316.444846l-78.14777 0 0 78.148793 78.14777 0L392.997283 316.444846zM392.997283 472.791551l-78.14777 0 0 78.156979 78.14777 0L392.997283 472.791551zM392.997283 160.15033c-42.993144 0-78.14777 35.14644-78.14777 78.148793l78.14777 0L392.997283 160.15033zM549.359337 629.145418l-78.14777 0 0 78.14777 78.14777 0L549.359337 629.145418zM783.844602 160.15033l0 78.148793 78.14777 0C861.992371 195.295746 826.79579 160.15033 783.844602 160.15033M549.359337 160.15033l-78.14777 0 0 78.148793 78.14777 0L549.359337 160.15033zM392.997283 707.293188l0-78.14777-78.14777 0C314.849513 672.081257 350.004139 707.293188 392.997283 707.293188M783.844602 550.94853l78.14777 0 0-78.156979-78.14777 0L783.844602 550.94853zM783.844602 394.642758l78.14777 0 0-78.14777-78.14777 0L783.844602 394.642758zM783.844602 707.293188c42.952211 0 78.14777-35.211931 78.14777-78.14777l-78.14777 0L783.844602 707.293188zM236.718116 316.444846l-78.206098 0 0 78.197912 0 390.797177c0 43.043286 35.14644 78.196888 78.206098 78.196888l468.977692 0 0-78.196888-468.977692 0L236.718116 316.444846zM627.49892 238.2981l78.14777 0 0-78.148793-78.14777 0L627.49892 238.2981zM627.49892 707.293188l78.14777 0 0-78.14777-78.14777 0L627.49892 707.293188z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.right:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M355.965 275.737l222.269 257.596-222.27 257.596c-20.459 23.711-20.459 62.155 0 85.866s53.632 23.711 74.091 0l259.316-300.53c10.231-11.856 15.344-27.394 15.343-42.932 0-15.538-5.112-31.077-15.343-42.933L430.054 189.872c-20.461-23.712-53.632-23.712-74.091 0-20.457 23.711-20.457 62.154 0.002 85.865z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.down:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M265.07 366.631L522.666 588.9l257.596-222.27c23.711-20.459 62.155-20.459 85.866 0s23.711 53.632 0 74.091l-300.53 259.316c-11.856 10.231-27.394 15.344-42.932 15.343-15.538 0-31.077-5.112-42.933-15.343L179.206 440.721c-23.712-20.461-23.712-53.632 0-74.091 23.71-20.458 62.154-20.458 85.864 0.001z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.left:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M689.369 275.737L467.1 533.333l222.27 257.596c20.459 23.711 20.459 62.155 0 85.866s-53.632 23.711-74.091 0l-259.316-300.53c-10.231-11.856-15.344-27.394-15.343-42.932 0-15.538 5.112-31.077 15.343-42.933l259.316-300.528c20.461-23.712 53.632-23.712 74.091 0 20.458 23.711 20.458 62.154-0.001 85.865z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.up:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M265.07 700.035l257.596-222.269 257.596 222.27c23.711 20.459 62.155 20.459 85.866 0s23.711-53.632 0-74.091l-300.53-259.316c-11.856-10.231-27.394-15.344-42.932-15.343-15.538 0-31.077 5.112-42.933 15.343L179.206 625.946c-23.712 20.461-23.712 53.632 0 74.091 23.71 20.457 62.154 20.457 85.864-0.002z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.double_right:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M454.211 201.251c-14.772-14.933-14.772-39.36 0-54.293 14.773-14.933 38.935-14.933 53.815 0l340.087 343.786c0.632 0.641 1.266 1.174 1.899 1.814 7.386 7.467 11.08 17.386 11.08 27.2 0 9.813-3.693 19.733-11.08 27.2-0.633 0.64-1.267 1.28-1.899 1.813L507.919 892.558c-14.772 14.933-38.935 14.933-53.708 0-14.772-14.933-14.772-39.36 0-54.293L769.29 519.758 454.211 201.251z m114.599 347.52L227.845 892.557c-14.806 14.933-39.025 14.933-53.831 0-14.806-14.933-14.806-39.36 0-54.293l315.795-318.506-315.795-318.507c-14.806-14.933-14.806-39.36 0-54.293s39.025-14.933 53.937 0L568.81 490.744c0.634 0.64 1.269 1.173 1.904 1.813 7.403 7.467 11.104 17.387 11.104 27.2 0 9.813-3.701 19.733-11.104 27.2-0.635 0.641-1.27 1.281-1.904 1.814z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.double_down:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 777.047l318.507-315.079c14.933-14.772 39.36-14.772 54.293 0s14.933 38.935 0 53.708L541.013 855.87c-0.533 0.632-1.173 1.266-1.813 1.899-7.467 7.386-17.387 11.08-27.2 11.08-9.814 0-19.733-3.693-27.2-11.08-0.64-0.633-1.173-1.267-1.814-1.899L139.2 515.783c-14.933-14.879-14.933-39.042 0-53.815 14.933-14.772 39.36-14.772 54.293 0L512 777.047z m27.2-198.576c-7.467 7.403-17.387 11.104-27.2 11.104-9.813 0-19.733-3.701-27.2-11.104-0.64-0.635-1.173-1.269-1.813-1.904L139.2 235.708c-14.933-14.912-14.933-39.131 0-53.937 14.933-14.806 39.36-14.806 54.293 0L512 497.566l318.506-315.795c14.933-14.806 39.36-14.806 54.293 0s14.933 39.025 0 53.831L541.013 576.567c-0.533 0.635-1.173 1.269-1.813 1.904z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.double_left:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M254.71 519.758l315.079 318.507c14.772 14.933 14.772 39.36 0 54.293s-38.935 14.933-53.708 0L175.888 548.771c-0.632-0.533-1.266-1.173-1.899-1.813-7.386-7.467-11.08-17.387-11.08-27.2 0-9.814 3.693-19.733 11.08-27.2 0.633-0.64 1.267-1.173 1.899-1.814l340.087-343.786c14.879-14.933 39.042-14.933 53.815 0 14.772 14.933 14.772 39.36 0 54.293L254.71 519.758z m198.576 27.2c-7.403-7.467-11.104-17.387-11.104-27.2 0-9.813 3.701-19.733 11.104-27.2 0.635-0.64 1.269-1.173 1.904-1.813l340.86-343.787c14.912-14.933 39.131-14.933 53.937 0 14.806 14.933 14.806 39.36 0 54.293L534.192 519.758l315.795 318.506c14.806 14.933 14.806 39.36 0 54.293s-39.025 14.933-53.831 0L455.19 548.771c-0.634-0.533-1.269-1.173-1.904-1.813z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.double_up:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193.493 577.547c-14.933 14.772-39.36 14.772-54.293 0-14.933-14.773-14.933-38.935 0-53.815l343.786-340.087c0.641-0.632 1.174-1.266 1.814-1.899 7.467-7.386 17.386-11.08 27.2-11.08 9.813 0 19.733 3.693 27.2 11.08 0.64 0.633 1.28 1.267 1.813 1.899L884.8 523.839c14.933 14.773 14.933 38.935 0 53.708-14.933 14.772-39.36 14.772-54.293 0L512 262.468 193.493 577.547z m347.52-114.599L884.8 803.913c14.933 14.806 14.933 39.025 0 53.831-14.933 14.806-39.36 14.806-54.293 0L512 541.949 193.493 857.744c-14.933 14.806-39.36 14.806-54.293 0s-14.933-39.025 0-53.937l343.787-340.859c0.64-0.634 1.173-1.269 1.813-1.904 7.467-7.403 17.387-11.104 27.2-11.104 9.813 0 19.733 3.701 27.2 11.104 0.64 0.635 1.28 1.269 1.813 1.904z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.caret_down:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M191.135 298.667h641.708c17.297 0 26.743 20.409 15.818 33.976l-320.91 399.132c-8.08 10.204-23.329 10.204-31.522 0L175.317 332.643c-10.924-13.567-1.365-33.976 15.818-33.976"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.caret_up:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M191.135 739.428h641.708c17.297 0 26.743-20.409 15.818-33.976L527.751 306.32c-8.08-10.204-23.329-10.204-31.522 0L175.317 705.452c-10.924 13.567-1.365 33.976 15.818 33.976"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.caret_left:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M732.381 198.183v641.708c0 17.297-20.409 26.743-33.976 15.818L299.272 534.798c-10.204-8.08-10.204-23.329 0-31.522l399.132-320.911c13.568-10.925 33.977-1.366 33.977 15.818"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.caret_right:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M291.619 198.183v641.708c0 17.297 20.409 26.743 33.976 15.818l399.132-320.911c10.204-8.08 10.204-23.329 0-31.522L325.595 182.365c-13.567-10.925-33.976-1.366-33.976 15.818"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_up:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M563.573 888.925v-634.49c0-0.111 0.234-0.221 0.234-0.111l243.546 239.33c19.671 19.354 52.339 20.018 72.83 1.327 20.491-18.58 21.193-49.437 1.405-68.791L549.99 100.264c-9.719-9.511-23.184-14.93-37.117-14.93-14.051 0-27.399 5.419-37.117 14.93L142.402 427.96C132.801 437.361 128 449.527 128 461.692c0 12.829 5.269 25.547 15.807 35.059 20.491 18.58 53.158 18.027 72.829-1.327l243.546-239.33c0.117-0.11 0.234 0 0.234 0.111v633.827c0 25.88 21.428 47.003 48.358 48.552 29.976 1.658 54.799-21.457 54.799-49.659z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_right:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M135.075 563.573h634.49c0.111 0 0.221 0.234 0.111 0.234l-239.33 243.546c-19.354 19.671-20.018 52.339-1.327 72.83 18.58 20.491 49.437 21.193 68.791 1.405L923.736 549.99c9.511-9.719 14.93-23.184 14.93-37.117 0-14.051-5.419-27.399-14.93-37.117L596.04 142.402C586.639 132.801 574.473 128 562.308 128c-12.829 0-25.547 5.269-35.059 15.807-18.58 20.491-18.027 53.158 1.327 72.829l239.33 243.546c0.11 0.117 0 0.234-0.111 0.234H133.969c-25.88 0-47.003 21.428-48.552 48.358-1.659 29.976 21.456 54.799 49.658 54.799z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_down:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M563.573 135.075v634.49c0 0.111 0.234 0.221 0.234 0.111l243.546-239.33c19.671-19.354 52.339-20.018 72.83-1.327 20.491 18.58 21.193 49.437 1.405 68.791L549.99 923.736c-9.719 9.511-23.184 14.93-37.117 14.93-14.051 0-27.399-5.419-37.117-14.93L142.402 596.04C132.801 586.639 128 574.473 128 562.308c0-12.829 5.269-25.547 15.807-35.059 20.491-18.58 53.158-18.027 72.829 1.327l243.546 239.33c0.117 0.11 0.234 0 0.234-0.111V133.969c0-25.88 21.428-47.003 48.358-48.552 29.976-1.659 54.799 21.456 54.799 49.658z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_left:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M888.925 563.573h-634.49c-0.111 0-0.221 0.234-0.111 0.234l239.33 243.546c19.354 19.671 20.018 52.339 1.327 72.83-18.58 20.491-49.437 21.193-68.791 1.405L100.264 549.99c-9.511-9.719-14.93-23.184-14.93-37.117 0-14.051 5.419-27.399 14.93-37.117L427.96 142.402c9.401-9.601 21.566-14.402 33.732-14.402 12.829 0 25.547 5.269 35.059 15.807 18.58 20.491 18.027 53.158-1.327 72.829l-239.33 243.546c-0.11 0.117 0 0.234 0.111 0.234h633.827c25.88 0 47.003 21.428 48.552 48.358 1.658 29.976-21.457 54.799-49.659 54.799z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_alt:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M858.329 128h-275.45c-20.852 0-37.756 16.886-37.756 37.714s16.905 37.714 37.756 37.714h181.145L564.859 402.286c-14.759 14.743-14.759 38.572 0 53.314a37.715 37.715 0 0 0 26.687 11.057c9.697 0 19.307-3.686 26.687-11.057l202.254-202.028v179.486c0 20.829 16.905 37.714 37.757 37.714 20.852 0 37.756-16.886 37.756-37.714V165.629c0.085-20.743-16.819-37.629-37.671-37.629zM441.292 820.571h-181.23l199.165-198.943c14.759-14.743 14.759-38.572 0-53.314-14.76-14.743-38.615-14.743-53.374 0l-202.34 202.028V590.857c0-20.829-16.905-37.714-37.756-37.714S128 570.028 128 590.857v267.429C128 879.114 144.905 896 165.756 896h275.45c20.852 0 37.756-16.886 37.756-37.714s-16.818-37.715-37.67-37.715z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.arrow_shrink:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M582.793 470.895h275.45c20.852 0 37.757-16.887 37.757-37.719 0-20.831-16.905-37.718-37.757-37.718H677.099l199.165-198.965c14.759-14.744 14.759-38.576 0-53.32a37.716 37.716 0 0 0-26.687-11.058c-9.697 0-19.307 3.686-26.687 11.058L620.55 345.224V165.719c0-20.831-16.905-37.719-37.756-37.719-20.852 0-37.757 16.887-37.757 37.719v267.458c0 20.831 16.904 37.718 37.756 37.718zM165.756 628.627h181.231l-199.165 198.88c-14.759 14.745-14.759 38.576 0 53.32s38.615 14.744 53.374 0L403.45 678.776v179.506c0 20.831 16.905 37.719 37.756 37.719 20.852 0 37.757-16.888 37.757-37.719V590.823c0-20.831-16.905-37.719-37.757-37.719h-275.45c-20.852 0-37.756 16.887-37.756 37.719 0 20.831 16.905 37.804 37.756 37.804z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.rollback:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M981.333 361.702V132.983c0-26.327-21.641-47.65-48.36-47.65s-48.36 21.323-48.36 47.65v228.719c0 70.76-27.928 137.351-78.827 187.502-50.778 50.032-118.361 77.669-190.296 77.669H205.156l135.891-133.777c18.86-18.702 18.86-48.841 0-67.424-9.43-9.292-21.762-13.938-34.215-13.938-12.453 0-24.784 4.646-34.215 13.938L56.812 638.309c-9.067 8.934-14.145 21.085-14.145 33.712s5.078 24.778 14.145 33.712l222.093 218.951c18.981 18.583 49.569 18.702 68.429 0 18.86-18.703 18.86-48.841 0-67.424l-137.1-135.087H615.49c97.687 0 189.571-37.405 258.725-105.544 69.156-68.14 107.239-158.674 107.118-254.927z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.plus_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M732 476.5c19.9 0 36 16.1 36 36s-16.1 36-36 36H548.5V731c0 19.9-16.1 36-36 36s-36-16.1-36-36V548.5H292c-19.9 0-36-16.1-36-36s16.1-36 36-36h184.5V293c0-19.9 16.1-36 36-36s36 16.1 36 36v183.5H732zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.plus_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M732 476.5H548.5V293c0-19.9-16.1-36-36-36s-36 16.1-36 36v183.5H292c-19.9 0-36 16.1-36 36s16.1 36 36 36h184.5V731c0 19.9 16.1 36 36 36s36-16.1 36-36V548.5H732c19.9 0 36-16.1 36-36s-16.1-36-36-36z m91.1 346.6c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.minus_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M292 476.5c-19.9 0-36 16.1-36 36s16.1 36 36 36h440c19.9 0 36-16.1 36-36s-16.1-36-36-36H292z m531.1 346.6c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.minus_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m220 548.5H292c-19.9 0-36-16.1-36-36s16.1-36 36-36h440c19.9 0 36 16.1 36 36s-16.1 36-36 36z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.close:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M578.414 512.03l303.814-303.787c18.362-18.375 18.362-48.086 0-66.342-18.362-18.375-48.052-18.375-66.295 0L512 445.569 208.067 141.781c-18.362-18.375-48.052-18.375-66.295 0-18.362 18.375-18.362 48.086 0 66.342L445.585 511.91 141.772 815.817c-18.362 18.375-18.362 48.086 0 66.342 9.181 9.188 21.224 13.722 33.148 13.722 12.043 0 23.966-4.534 33.148-13.722L512 578.371l303.933 303.907c9.181 9.188 21.105 13.722 33.148 13.722 12.043 0 23.966-4.534 33.147-13.722 18.362-18.375 18.362-48.086 0-66.342L578.414 512.03z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.close_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M823.1 823.1c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m205.2 306.2c-14.1-14-36.9-14-50.9 0.1L512 461 357.7 306.3c-14-14.1-36.8-14.1-50.9-0.1-14.1 14-14.1 36.8-0.1 50.9L461.2 512 306.7 666.9c-14 14.1-14 36.9 0.1 50.9 7 7 16.2 10.5 25.4 10.5s18.5-3.5 25.5-10.6L512 563l154.3 154.8c7 7.1 16.3 10.6 25.5 10.6s18.4-3.5 25.4-10.5c14.1-14 14.1-36.8 0.1-50.9L562.8 512l154.4-154.9c14.1-14.1 14.1-36.9 0-50.9z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.close_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m205.2 717.9c-7 7-16.2 10.5-25.4 10.5s-18.5-3.5-25.5-10.6L512 563 357.7 717.7c-7 7.1-16.3 10.6-25.5 10.6s-18.4-3.5-25.4-10.5c-14.1-14-14.1-36.8-0.1-50.9L461.2 512 306.7 357.1c-14-14.1-14-36.9 0.1-50.9s36.9-14 50.9 0.1L512 461l154.3-154.7c14-14.1 36.8-14.1 50.9-0.1 14.1 14 14.1 36.8 0 50.9L562.8 512l154.5 155c14 14.1 14 36.9-0.1 50.9z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.check:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M808.945 227.872L344.508 680.04 223.4 474.259c-14.039-23.813-45.096-32.072-69.63-18.445-24.534 13.627-33.042 43.772-19.003 67.584L289.06 785.615c9.36 15.967 26.661 25.052 44.387 25.052 8.651 0 17.301-2.065 25.243-6.469 4.538-2.615 8.651-5.643 12.054-9.222l0.567-0.551 509.816-496.353c19.854-19.408 19.854-50.792-0.142-70.062-19.853-19.546-52.045-19.546-72.04-0.138z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.check_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m260.2 356.6L412.7 717.2l-0.4 0.4c-2.4 2.6-5.3 4.8-8.5 6.7-5.6 3.2-11.7 4.7-17.8 4.7-12.5 0-24.7-6.6-31.3-18.2L245.9 520.3c-9.9-17.3-3.9-39.2 13.4-49.1 17.3-9.9 39.2-3.9 49.1 13.4l85.4 149.5 327.5-328.5c14.1-14.1 36.8-14.1 50.8 0.1 14.1 14 14.1 36.8 0.1 50.9z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.check_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M823.1 823.1c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m209.3 305.6L393.8 634.1l-85.4-149.5c-9.9-17.3-31.8-23.3-49.1-13.4S236 503 245.9 520.3l108.8 190.5c6.6 11.6 18.8 18.2 31.3 18.2 6.1 0 12.2-1.5 17.8-4.7 3.2-1.9 6.1-4.1 8.5-6.7l0.4-0.4 359.5-360.6c14-14.1 14-36.9-0.1-50.9-14-14.2-36.7-14.2-50.8-0.1z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.info_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m-3 184.5c19.882 0 36 16.118 36 36s-16.118 36-36 36-36-16.118-36-36 16.118-36 36-36z m121.2 593.1H387.8c-19.9 0-36-16.1-36-36s16.1-36 36-36H473V391.5h-60c-19.9 0-36-16.1-36-36s16.1-36 36-36h96c19.9 0 36 16.1 36 36v350.1h85.2c19.9 0 36 16.1 36 36s-16.1 36-36 36z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.info_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M473 220.5c0-19.882 16.118-36 36-36s36 16.118 36 36-16.118 36-36 36-36-16.118-36-36z m157.2 485.1H545V355.5c0-19.9-16.1-36-36-36h-96c-19.9 0-36 16.1-36 36s16.1 36 36 36h60v314.1h-85.2c-19.9 0-36 16.1-36 36s16.1 36 36 36H630.2c19.9 0 36-16.1 36-36s-16.1-36-36-36z m192.9 117.5c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.info:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M473 220.5c0-19.882 16.118-36 36-36s36 16.118 36 36-16.118 36-36 36-36-16.118-36-36z m157.2 485.1H545V355.5c0-19.9-16.1-36-36-36h-96c-19.9 0-36 16.1-36 36s16.1 36 36 36h60v314.1h-85.2c-19.9 0-36 16.1-36 36s16.1 36 36 36H630.2c19.9 0 36-16.1 36-36s-16.1-36-36-36z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.question_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m-6.5 812.5c-23.914 0-43.3-19.386-43.3-43.3a43.3 43.3 0 1 1 86.6 0c0 23.914-19.386 43.3-43.3 43.3z m185.8-421.6c-2.5 46.3-16.7 82.8-87.7 153.8-36 36-58.7 63-61 86.7-1.8 18.6-17.5 32.5-35.8 32.5-1.2 0-2.4-0.1-3.6-0.2-19.8-1.9-34.2-19.6-32.3-39.4 4.9-49.9 41.5-90.2 81.8-130.5 64.5-64.5 65.6-85 66.7-106.7 1.3-25.3-8-49.8-26.4-69.1-20.9-22-50.5-34.6-81.2-34.6h-0.2c-59.1 0.1-107.3 48.3-107.3 107.5 0 19.9-16.1 36-36 36s-36-16.1-36-36c0-47.9 18.6-92.9 52.4-126.8 33.8-33.9 78.8-52.6 126.7-52.7 50.5-0.1 99.3 20.7 133.8 57 32.1 33.8 48.5 77.3 46.1 122.5z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.question:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M462.2 769.2a43.3 43.3 0 1 1 86.6 0c0 23.914-19.386 43.3-43.3 43.3-23.914 0-43.3-19.386-43.3-43.3z m44.6-105.3c-1.2 0-2.4-0.1-3.6-0.2-19.8-1.9-34.2-19.6-32.3-39.4 4.9-49.9 41.5-90.2 81.8-130.5 64.5-64.5 65.6-85 66.7-106.7 1.3-25.3-8-49.8-26.4-69.1-20.9-22-50.5-34.6-81.2-34.6h-0.2c-59.1 0.1-107.3 48.3-107.3 107.5 0 19.9-16.1 36-36 36s-36-16.1-36-36c0-47.9 18.6-92.9 52.4-126.8 33.8-33.9 78.8-52.6 126.7-52.7 50.5-0.1 99.3 20.7 133.8 57 32.1 33.8 48.5 77.3 46.1 122.5-2.5 46.3-16.7 82.8-87.7 153.8-36 36-58.7 63-61 86.7-1.8 18.6-17.5 32.5-35.8 32.5z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.question_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M462.2 769.2a43.3 43.3 0 1 1 86.6 0c0 23.914-19.386 43.3-43.3 43.3-23.914 0-43.3-19.386-43.3-43.3z m44.6-105.3c-1.2 0-2.4-0.1-3.6-0.2-19.8-1.9-34.2-19.6-32.3-39.4 4.9-49.9 41.5-90.2 81.8-130.5 64.5-64.5 65.6-85 66.7-106.7 1.3-25.3-8-49.8-26.4-69.1-20.9-22-50.5-34.6-81.2-34.6h-0.2c-59.1 0.1-107.3 48.3-107.3 107.5 0 19.9-16.1 36-36 36s-36-16.1-36-36c0-47.9 18.6-92.9 52.4-126.8 33.8-33.9 78.8-52.6 126.7-52.7 50.5-0.1 99.3 20.7 133.8 57 32.1 33.8 48.5 77.3 46.1 122.5-2.5 46.3-16.7 82.8-87.7 153.8-36 36-58.7 63-61 86.7-1.8 18.6-17.5 32.5-35.8 32.5z m316.3 159.2c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.exclamation_circle:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m-40 231c0-22.1 17.9-40 40-40s40 17.9 40 40v369c0 22.1-17.9 40-40 40s-40-17.9-40-40V231z m40 563c-24.853 0-45-20.147-45-45s20.147-45 45-45 45 20.147 45 45-20.147 45-45 45z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.exclamation_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M467 749c0-24.853 20.147-45 45-45s45 20.147 45 45-20.147 45-45 45-45-20.147-45-45z m45-109c-22.1 0-40-17.9-40-40V231c0-22.1 17.9-40 40-40s40 17.9 40 40v369c0 22.1-17.9 40-40 40z m0-640C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z m0 72c59.4 0 117 11.6 171.2 34.5 52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.4-94.3 139.9-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.exclamation:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M467 749c0-24.853 20.147-45 45-45s45 20.147 45 45-20.147 45-45 45-45-20.147-45-45z m45-109c-22.1 0-40-17.9-40-40V231c0-22.1 17.9-40 40-40s40 17.9 40 40v369c0 22.1-17.9 40-40 40z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.pause_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M667 320c-19.9 0-36 16.1-36 36v312c0 19.9 16.1 36 36 36s36-16.1 36-36V356c0-19.9-16.1-36-36-36z m-310 0c-19.9 0-36 16.1-36 36v312c0 19.9 16.1 36 36 36s36-16.1 36-36V356c0-19.9-16.1-36-36-36z m466.1 503.1c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.plus_square_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M732 476.5c19.9 0 36 16.1 36 36s-16.1 36-36 36H548.5V731c0 19.9-16.1 36-36 36s-36-16.1-36-36V548.5H292c-19.9 0-36-16.1-36-36s16.1-36 36-36h184.5V293c0-19.9 16.1-36 36-36s36 16.1 36 36v183.5H732zM128 128v768h768V128H128z m0-85.333h768c47.128 0 85.333 38.205 85.333 85.333v768c0 47.128-38.205 85.333-85.333 85.333H128c-47.128 0-85.333-38.205-85.333-85.333V128c0-47.128 38.205-85.333 85.333-85.333z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.minus_square_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M548.5 476.5H732c19.9 0 36 16.1 36 36s-16.1 36-36 36H292c-19.9 0-36-16.1-36-36s16.1-36 36-36h256.5zM128 128v768h768V128H128z m0-85.333h768c47.128 0 85.333 38.205 85.333 85.333v768c0 47.128-38.205 85.333-85.333 85.333H128c-47.128 0-85.333-38.205-85.333-85.333V128c0-47.128 38.205-85.333 85.333-85.333z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.play_circle_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M384 729.423c0 11.644 13.829 18.121 23.023 10.719l270.458-217.454c6.915-5.552 6.915-15.885 0-21.36L407.023 283.873C397.829 276.47 384 282.871 384 294.591v434.832zM823.1 823.1c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.appendix:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M745.803 184.783c-35.912 0-70.182 6.569-102.81 19.489-33.832 13.467-64.27 33.284-90.328 59.014L297.666 515.328c-29.452 29.124-45.547 67.993-45.438 109.489 0.109 41.387 16.423 80.255 45.985 109.489 29.562 29.233 68.759 45.328 110.583 45.438 42.043 0 81.131-15.985 110.474-44.89l223.794-221.167c7.445-7.336 11.496-17.08 11.496-27.372 0-10.401-4.051-20.146-11.496-27.372-7.336-7.336-17.19-11.277-27.591-11.277-10.402 0-20.256 4.051-27.591 11.277L464.089 680.109c-14.562 14.453-34.161 22.336-55.073 22.336-21.241-0.109-41.058-8.212-55.73-22.774-14.781-14.671-22.993-34.16-22.993-54.963-0.109-20.693 7.883-40.073 22.555-54.525l254.999-252.152c36.35-36.022 85.182-55.839 137.299-55.839 52.883 0.109 102.043 20.255 138.941 56.605 36.788 36.46 57.153 84.963 57.262 136.642 0.109 51.678-19.927 100.073-56.387 136.094L614.417 859.232c-54.087 53.211-126.35 82.554-203.43 82.554-78.175-0.219-150.875-30-205.4-83.868s-84.635-125.693-84.744-202.225c-0.219-76.533 29.562-148.138 83.649-201.569L553.76 108.798c7.445-7.336 11.497-17.08 11.497-27.372 0-10.401-4.051-20.146-11.497-27.372-7.445-7.336-17.299-11.387-27.701-11.387-10.401 0-20.256 4.051-27.591 11.277L149.2 399.38c-34.817 34.379-61.752 74.781-80.146 119.89-17.628 43.576-26.496 89.561-26.387 136.642 0.11 47.19 9.197 93.175 27.153 136.642 18.504 45.109 45.547 85.511 80.584 120.109 34.817 34.489 75.766 61.314 121.423 79.708 43.795 17.628 90.328 26.606 138.175 26.825 48.503 0 94.598-8.759 138.175-26.168 45.547-18.066 86.386-44.671 121.204-79.16l270.546-267.59c25.949-25.73 46.094-55.73 59.671-89.343 13.139-32.518 19.817-66.679 19.708-101.824-0.329-72.262-28.796-140.145-80.255-191.057-51.57-50.914-120.11-79.162-193.248-79.271z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.heart:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M1000.00129 271.347c-15.5-37.729-37.6-71.412-65.699-100.037-54.4-55.43-125.798-85.977-200.997-85.977-85.699 0-165.998 39.448-221.397 108.634-55.4-69.185-135.698-108.634-221.397-108.634-75.099 0-146.498 30.749-201.097 86.584-28.2 28.828-50.399 62.612-65.799 100.442-16 39.246-24 80.818-23.6 123.604 0.7 92.754 40.099 179.237 108.098 237.499 3.1 2.63 6 5.159 8.9 7.89 14.9 13.554 57.999 53.407 112.598 103.88 93.499 86.483 209.897 194.106 257.496 236.892 7 6.17 15.8 9.609 24.9 9.609 9.2 0 18.1-3.439 24.899-9.609 34.499-31.053 105.798-97.002 181.397-166.896C792.50229 746.649 869.20129 675.642 914.10029 634.98c69.499-58.565 109.598-146.06 109.898-240.028 0.102-42.989-7.998-84.561-23.997-123.605z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.heart_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M567.70729 247.577c40.899-53.812 101.199-84.662 165.597-84.662 54.799 0 106.898 22.455 146.798 63.117 20.9 21.241 37.5 46.428 49.199 74.952 12 29.434 18.1 60.892 18.1 93.361-0.1 35.908-7.7 70.4-22.7 102.464-14.3 30.243-34.9 57.352-59.699 78.391l-1.8 1.618c-38.899 35.301-105.398 96.497-197.497 181.867-71.999 66.657-121.098 111.972-153.698 141.811-49.699-45.416-130.697-120.165-202.296-186.317l-47.299-43.697c-45.199-41.876-80.899-74.851-94.199-86.887-0.8-0.708-1.6-1.416-2.4-2.225-2.6-2.326-5.3-4.754-8.2-7.182-50.999-43.798-80.499-108.938-80.999-178.731-0.2-32.368 5.8-63.724 17.8-93.26 11.8-28.727 28.4-54.115 49.399-75.458 40.199-41.067 92.399-63.623 146.798-63.623 64.299 0 124.698 30.75 165.597 84.46 13.3 17.397 34.1 27.715 55.799 27.715 21.6 0.102 42.5-10.316 55.7-27.714zM1000.00129 271.347c-15.5-37.729-37.6-71.412-65.699-100.037-54.4-55.43-125.798-85.977-200.997-85.977-85.699 0-165.998 39.448-221.397 108.634-55.4-69.185-135.698-108.634-221.397-108.634-75.099 0-146.498 30.749-201.097 86.584-28.2 28.828-50.399 62.612-65.799 100.442-16 39.246-24 80.818-23.6 123.604 0.7 92.754 40.099 179.237 108.098 237.499 3.1 2.63 6 5.159 8.9 7.89 14.9 13.554 57.999 53.407 112.598 103.88 93.499 86.483 209.897 194.106 257.496 236.892 7 6.17 15.8 9.609 24.9 9.609 9.2 0 18.1-3.439 24.899-9.609 34.499-31.053 105.798-97.002 181.397-166.896C792.50229 746.649 869.20129 675.642 914.10029 634.98c69.499-58.565 109.598-146.06 109.898-240.028 0.102-42.989-7.998-84.561-23.997-123.605z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.desktop:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M951.545 155.803v521.612H72.455V155.803h879.09z m6.879-70.47H65.576C29.464 85.333 0 113.99 0 149.113v534.992c0 35.123 29.464 63.78 65.576 63.78h409.05v120.312H305.755c-19.948 0-36.227 15.833-36.227 35.235s16.279 35.235 36.227 35.235H716.64c19.948 0 36.227-15.833 36.227-35.235s-16.28-35.235-36.227-35.235H547.081V747.885h411.343c36.113 0 65.576-28.656 65.576-63.78V149.113c0-35.123-29.463-63.78-65.576-63.78z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.calendar:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M750.933 682.667c21.12 0 38.4 18.432 38.4 40.96v3.413c0 22.528-17.28 40.96-38.4 40.96H294.4c-21.12 0-38.4-18.432-38.4-40.96v-3.413c0-22.528 17.28-40.96 38.4-40.96h456.533z m-453.642-85.334c-22.679 0-41.291-17.067-41.291-38.115v-9.103C256 529.181 274.612 512 297.291 512h450.751c22.68 0 41.291 17.181 41.291 38.115v9.103c0 20.935-18.611 38.115-41.291 38.115H297.291zM124.093 857.585h775.588V460.633H124.093v396.952zM272.244 345.72c-22.392 0-40.713-18.269-40.713-40.597V271.18H124.093v108.259h775.588v-108.26h-99.408v33.943c0 22.329-18.321 40.597-40.713 40.597s-40.713-18.269-40.713-40.597v-33.943h-405.89v33.943c0 22.329-18.321 40.598-40.713 40.598z m709.089-115.138c0 1.353-0.113 2.819-0.339 4.172v664.781c0 19.058-14.25 35.072-32.684 37.778a38.2 38.2 0 0 1-10.178 1.353H83.38c-12.666 0-23.976-5.751-31.44-14.773-5.768-6.766-9.274-15.45-9.274-24.922V229.567c0-17.818 12.44-32.929 29.178-37.102 4.411-1.579 9.047-2.481 14.023-2.481H231.53V125.93c0-22.329 18.321-40.597 40.713-40.597s40.713 18.269 40.713 40.597v64.054h405.888V125.93c0-22.329 18.321-40.597 40.713-40.597s40.713 18.269 40.713 40.597v64.054h140.35c22.392 0 40.713 18.269 40.713 40.598z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.delete:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M713.9 391.5996875c-19.9003125 0-36 16.0996875-36 36V761.6c0 19.9003125 16.0996875 36 36 36s36-16.0996875 36-36V427.5996875c0-19.899375-16.0996875-36-36-36z m-388.0003125 0c-19.9003125 0-36 16.0996875-36 36V761.6c0 19.9003125 16.0996875 36 36 36s36-16.0996875 36-36V427.5996875c0-19.899375-16.0996875-36-36-36z m195 0c-19.9003125 0-36 16.0996875-36 36V761.6c0 19.9003125 16.0996875 36 36 36s36-16.0996875 36-36V427.5996875c0-19.899375-16.0996875-36-36-36z m321.9 503.000625H209.9V271.5996875h632.8996875v623.000625zM363.6996875 142.7h314.8996875v57.9H363.6996875v-57.9z m596.600625 67.9003125c-6.7996875-6.7996875-16.6996875-10.6003125-26.2996875-10.6003125H749.4003125v-57.4996875c0-38.8996875-31.6003125-70.5-70.5-70.5H363.8c-38.8996875 0-70.5 31.6003125-70.5 70.5V200H107.7996875c-19.6996875 0-35.8003125 16.0003125-35.8003125 35.8003125 0 19.8 16.0003125 35.8003125 35.8003125 35.8003125h31.6003125v623.1c0 38.8996875 31.6003125 70.5 70.5 70.5h633c38.8996875 0 70.5-31.6003125 70.5-70.5v-623.1h20.5996875c19.6996875 0 36.7996875-16.0003125 36.7996875-35.8003125 0.0009375-9.500625-3.699375-18.4003125-10.4990625-25.2z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.folder_open:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M938.831 480.164l-38.277 177.6-39.385 181.785H107.077l77.785-359.384h753.969z m-530.954-241.6l0.246 0.984c4.185 16.369 13.908 31.016 28.185 42.092 14.646 11.569 31.508 17.6 48.861 17.6H900.8v103.385H164.554c-24.738 0-45.785 16.861-51.077 41.108L77.785 608.41V163.118h306.338c0.369 0 2.092 0.492 4.185 2.092 1.354 1.108 2.215 2.215 2.462 2.83l17.107 70.524z m562.954 171.2h0.465-0.465z m40.615 11.938c-8.369-10.338-20.061-16.984-32.985-18.83V297.026c0-41.723-33.846-75.57-75.569-75.57H485.785c-0.739-0.369-2.092-1.354-2.585-2.092l-16.861-69.292c-4.185-17.846-14.892-34.216-30.277-46.154C420.677 91.979 402.215 85.333 384 85.333H75.569C33.846 85.333 0 119.18 0 160.902V842.01a75.183 75.183 0 0 0 16.123 46.523l-0.246 0.492 3.446 3.692c14.523 16 34.338 24.862 55.877 24.862 3.938 0 273.108 0.369 505.846 0.369 117.292 0 225.354-0.123 285.661-0.369 33.231-0.123 62.646-24.492 69.908-57.969l41.477-191.754 43.815-202.092c3.324-15.631-0.492-31.631-10.461-44.062z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.edit:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M351.36 630.147l62.223-132.367 292.97-292.842 70.144 70.144-292.97 292.842-132.367 62.223z m417.159-487.176L819.37 92.12l70.144 70.144-50.851 50.851-70.144-70.144zM264.733 762.897c5.877 0 12.01-1.278 18.143-3.705h0.383L532.661 642.03l2.555-1.278L959.403 216.31c14.566-14.438 22.487-33.731 22.487-54.173s-8.049-39.735-22.487-54.173L873.799 22.36C859.234 7.921 839.941 0 819.498 0c-20.443 0-39.735 8.049-54.173 22.487l-422.526 422.27-1.917 1.917-1.15 2.427-116.651 247.996c-6.899 14.693-5.877 30.792 2.811 44.463 8.561 13.16 23.382 21.337 38.841 21.337zM939.216 894.37H43.824C19.676 894.37 0 914.046 0 938.194s19.676 43.824 43.824 43.824h895.392c24.148 0 43.824-19.676 43.824-43.824s-19.676-43.824-43.824-43.824z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.home:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M436 681.713h152v263.298H436V681.713z m424.512-80.087c-21.606 0-39.086 17.663-39.086 39.495v303.89H666.17V681.713c0-43.664-34.96-78.989-78.171-78.989H436c-43.211 0-78.171 35.326-78.171 78.989v263.298H202.573v-303.89c0-21.832-17.48-39.495-39.085-39.495s-39.086 17.663-39.086 39.495v303.89c0 43.664 34.96 78.989 78.171 78.989h618.854c43.211 0 78.171-35.326 78.171-78.989v-303.89c0-21.832-17.48-39.495-39.086-39.495z m107.92-145.691L564.44 63.072a77.444 77.444 0 0 0-104.771 0L55.568 455.935c-16.068 14.591-17.263 39.495-2.823 55.731 14.44 16.237 39.194 17.444 55.154 2.853L512 121.656l404.101 392.863c16.068 14.591 40.714 13.384 55.154-2.853 14.439-16.236 13.245-41.14-2.823-55.731z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.user:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M276.571 314.743c0-128.229 104.343-232.457 232.457-232.457s232.457 104.229 232.457 232.457S637.256 547.2 509.028 547.2 276.571 442.857 276.571 314.743z m583.772 517.486c-19.2-45.371-46.743-86.171-81.714-121.143-34.972-34.971-75.772-62.514-121.143-81.714-15.429-6.514-31.314-12-47.314-16.457C655.429 597.6 696.914 572 731.657 537.257c59.429-59.428 92.229-138.514 92.229-222.514S791.2 151.657 731.657 92.229C672.229 32.8 593.143 0 509.143 0S346.057 32.686 286.629 92.229C227.2 151.657 194.4 230.743 194.4 314.743s32.686 163.086 92.229 222.514C321.371 572 362.857 597.6 408.114 612.914c-16 4.457-31.886 9.829-47.314 16.457-45.371 19.2-86.171 46.743-121.143 81.714-34.971 34.971-62.514 75.771-81.714 121.143C138.057 879.314 128 929.143 128 980.686c0 22.743 18.4 41.143 41.143 41.143 22.743 0 41.143-18.4 41.143-41.143 0-79.886 31.086-154.971 87.543-211.429s131.543-87.543 211.428-87.543c79.886 0 154.972 31.086 211.429 87.543 56.457 56.457 87.543 131.543 87.543 211.429 0 22.743 18.4 41.143 41.143 41.143 22.743 0 41.143-18.4 41.143-41.143-0.229-51.543-10.286-101.372-30.172-148.457z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.picture:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M724.571 400.533c-18.286 0-33.143-14.857-33.143-33.143s14.857-33.143 33.143-33.143 33.143 14.857 33.143 33.143-14.857 33.143-33.143 33.143z m0-148.571c-63.657 0-115.428 51.771-115.428 115.428s51.771 115.429 115.428 115.429C788.229 482.819 840 431.048 840 367.39c0-63.657-51.771-115.428-115.429-115.428z m217.143 333.943l-134.971-55.657c-14.057-10.743-33.372-11.314-48-1.371L580.686 648.99 326.857 334.476c-7.543-8.572-18.4-13.6-29.829-13.943-11.429-0.343-22.514 4.229-30.514 12.343L82.286 521.333v-353.6l0.114-0.114h859.086l0.114 0.114 0.114 418.172z m0 296.343l-0.114 0.114H82.514l-0.114-0.114v-243.2l212.114-216.914L542.857 730.59c13.714 15.543 36.8 18.514 53.943 6.857l183.429-124 161.486 76v192.801z m0-796.915H82.286C37.029 85.333 0 122.362 0 167.619v714.857c0 45.257 37.029 82.286 82.286 82.286h859.429c45.257 0 82.286-37.029 82.286-82.286V167.619c-0.001-45.257-37.03-82.286-82.287-82.286z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.upload:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M904.067 661.733c19.1 0 34.6 15.5 34.6 34.5v222.9c0 34.2-27.8 62.1-62.1 62.1h-771.8c-34.2 0-62.1-27.8-62.1-62.1v-222.9c0-19 15.4-34.6 34.5-34.6s34.6 15.5 34.6 34.6v195.5c0 11.4 9.3 20.6 20.6 20.6h716.5c11.4 0 20.6-9.3 20.6-20.6v-195.4c0-19.1 15.5-34.6 34.6-34.6z m-576.688-338.53c-10.021 0-20.043-3.813-27.667-11.546-15.359-15.249-15.359-40.085 0-55.444l159.469-159.36c15.25-15.359 40.085-15.359 55.444 0l159.469 159.36c15.359 15.25 15.359 40.085 0 55.444-7.734 7.625-17.646 11.438-27.776 11.438-10.13 0-20.151-3.813-27.776-11.438l-92.479-92.479V708.26c0 21.676-17.537 39.214-39.214 39.214-21.676 0-39.214-17.537-39.214-39.214V219.177l-92.479 92.588c-7.734 7.625-17.756 11.438-27.777 11.438z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.save:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M464.036 354.058c22.107 0 39.992-17.885 39.992-39.992v-47.768c0-22.107-17.885-39.992-39.992-39.992-22.106 0-39.992 17.885-39.992 39.992v47.768c0 22.106 17.885 39.992 39.992 39.992z m393.366 503.344H165.317V165.318h63.21V394.05c0 66.209 53.767 119.977 119.976 119.977h161.079c66.209 0 119.976-53.767 119.976-119.977V165.318h2.555l225.178 225.178v466.907h0.111zM308.511 165.318h241.064V394.05c0 22.107-17.885 39.992-39.992 39.992h-161.08c-22.107 0-39.992-17.885-39.992-39.992V165.318z m356.708-79.985H165.317c-44.213 0-79.984 35.771-79.984 79.984v692.085c0 44.214 35.771 79.984 79.984 79.984h692.085c44.213 0 79.984-35.771 79.984-79.984V357.391L665.219 85.333z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.search:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M558.455 742.069c-42.483 17.986-87.614 27.034-134.179 27.034-46.566 0-91.697-9.159-134.179-27.034-41.048-17.324-77.903-42.262-109.683-73.931-31.669-31.669-56.607-68.634-73.931-109.683-17.986-42.483-27.035-87.614-27.035-134.179 0-46.566 9.159-91.697 27.035-134.179 17.324-41.048 42.262-77.903 73.931-109.683 31.669-31.669 68.635-56.607 109.683-73.931 42.483-17.986 87.614-27.034 134.179-27.034s91.696 9.158 134.179 27.034c41.048 17.324 77.904 42.262 109.683 73.931 31.669 31.669 56.607 68.524 73.931 109.683 17.986 42.483 27.034 87.614 27.034 134.179s-9.158 91.696-27.034 134.179c-17.324 41.048-42.262 77.904-73.931 109.683-31.779 31.669-68.635 56.497-109.683 73.931z m421.076 175.89L753.435 691.972c59.476-73.048 95.117-166.179 95.117-267.696C848.552 189.903 658.648 0 424.276 0S0 189.903 0 424.276c0 234.372 189.903 424.276 424.276 424.276 101.076 0 193.876-35.31 266.704-94.345l226.097 226.097c8.607 8.607 19.862 12.91 31.227 12.91 11.255 0 22.62-4.303 31.228-12.91 17.213-17.214 17.213-45.132-0.001-62.345z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.settings:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M606.4 606.293c-20.587 20.587-48 32-77.12 32-29.12 0-56.533-11.307-77.12-32-20.587-20.587-32-48-32-77.12s11.307-56.533 32-77.12c20.587-20.587 48-32 77.12-32 29.12 0 56.533 11.307 77.12 32 20.587 20.693 32 48 32 77.12s-11.413 56.534-32 77.12z m-77.12-263.04c-102.507 0-185.92 83.413-185.92 185.92s83.413 185.92 185.92 185.92S715.2 631.68 715.2 529.173s-83.413-185.92-185.92-185.92zM938.987 528.32v0.533c0 14.4-0.96 29.013-2.773 44.693l-37.76 12.587-33.387 11.307-10.347 33.6a314.813 314.813 0 0 1-23.147 56.213l-16.427 31.04 33.493 66.88c-9.813 12.373-19.52 23.36-29.653 33.493l-0.213 0.213c-9.92 10.027-20.907 19.733-33.28 29.44l-66.667-33.387-30.933 16.107c-18.24 9.493-37.44 17.387-56.96 23.573l-33.387 10.453-10.88 33.067-12.587 37.76c-15.573 1.92-30.293 2.773-44.693 2.773-14.293 0-29.013-0.96-44.693-2.773l-12.587-37.76-10.987-33.387-33.6-10.347c-19.84-6.08-38.72-13.867-56.213-23.147L340.16 815.04l-31.467 15.68-35.52 17.707c-12.373-9.813-23.36-19.52-33.493-29.653-10.347-10.347-20.053-21.333-29.653-33.493l33.28-66.667-16.213-30.933c-9.707-18.56-17.6-37.547-23.36-56.533l-10.347-33.6-71.04-23.573c-1.92-15.573-2.773-30.293-2.773-44.693 0-14.4 0.96-29.013 2.773-44.693l70.827-23.573 10.347-33.493c5.973-19.307 13.867-38.4 23.36-56.747l16.213-30.933-15.573-31.253-17.707-35.52a411.06 411.06 0 0 1 63.147-63.147l66.773 33.387 31.04-16.32c17.92-9.387 37.013-17.28 56.747-23.467l33.387-10.453L472 159.893l12.587-37.76c16.107-1.813 30.72-2.773 44.587-2.773 14.293 0 29.013 0.96 44.587 2.773l23.68 70.72 33.387 10.347c19.413 6.08 38.507 13.973 56.747 23.36l30.933 16.213 66.667-33.387a418.66 418.66 0 0 1 63.467 63.253l-33.28 66.667 16 30.827c9.493 18.347 17.493 37.547 23.573 57.067l10.453 33.387 33.173 11.093 37.76 12.587c2.026 16 2.879 30.4 2.666 44.053z m69.866-76.373l-4.053-25.6-78.187-26.133c-6.827-21.12-15.36-41.813-25.493-61.547l36.907-73.707-15.147-21.12c-30.72-41.92-67.413-78.613-109.12-108.907l-21.013-15.147-73.707 36.907a417.946 417.946 0 0 0-61.547-25.493l-26.027-77.973-25.386-3.947c-28.267-4.48-52.693-6.613-77.013-6.613-23.68 0-48.213 2.133-77.12 6.72l-25.6 4.053-26.027 78.293c-21.547 7.04-42.24 15.573-61.547 25.387l-73.6-37.013-21.013 15.147c-41.813 30.293-78.507 66.88-109.013 108.907L120 265.28l36.907 73.707c-10.027 19.733-18.56 40.32-25.387 61.44l-78.187 25.92-4.053 25.6c-4.48 28.267-6.613 53.44-6.613 77.227 0 23.893 2.133 49.067 6.613 77.12l4.053 25.6 78.187 26.133c6.827 21.12 15.36 41.813 25.493 61.547l-36.693 73.493 15.147 20.907c15.787 21.973 32.107 41.28 49.813 59.093 16.533 16.64 35.84 32.96 58.987 49.92l21.013 15.147 73.6-36.907c19.84 10.133 40.427 18.773 61.547 25.493l26.027 78.293 25.6 4.053c28.053 4.48 53.227 6.613 77.013 6.613 23.787 0 48.96-2.133 77.12-6.613l25.6-4.053 26.027-78.293c20.907-6.827 41.493-15.36 61.44-25.387l73.707 36.907 21.013-15.147c22.933-16.533 42.24-32.853 58.987-49.92 17.387-17.387 33.6-36.8 49.813-59.093l15.147-21.12-36.907-73.707a408.54 408.54 0 0 0 25.493-61.547l78.187-26.133 4.053-25.6c4.48-28.053 6.613-53.227 6.613-77.013 0.32-23.573-1.813-48.853-6.507-77.013z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.quit:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M512 480c19.9 0 36-16.1 36-36V228c0-19.9-16.1-36-36-36s-36 16.1-36 36v216c0 19.9 16.1 36 36 36z m156.9-236.5c-17.2-10-39.2-4.1-49.2 13.1s-4.1 39.2 13.1 49.2c36 20.9 66.2 50.8 87.3 86.7 21.7 36.9 33.2 79.1 33.2 122.2 0 64.4-25.1 125-70.7 170.6C637 730.9 576.4 756 512 756c-64.4 0-125-25.1-170.6-70.7-45.6-45.6-70.7-106.2-70.7-170.6 0-43.1 11.5-85.3 33.2-122.2 21.1-35.8 51.3-65.8 87.3-86.7 17.2-10 23.1-32 13.1-49.2-10-17.2-32-23.1-49.2-13.1-46.7 27.1-85.8 65.9-113.2 112.4-28.2 47.9-43.2 102.8-43.2 158.8 0 83.7 32.6 162.3 91.8 221.5C349.7 795.4 428.3 828 512 828s162.3-32.6 221.5-91.8 91.8-137.8 91.8-221.5c0-55.9-14.9-110.8-43.2-158.8-27.4-46.4-66.5-85.3-113.2-112.4z m154.2 579.6c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.time:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M733 504H548V264c0-19.9-16.1-36-36-36s-36 16.1-36 36v240c0 39.8 32.2 72 72 72h185c19.9 0 36-16.1 36-36s-16.1-36-36-36z m90.1 319.1c-40.4 40.4-87.5 72.2-139.9 94.3C629 940.4 571.4 952 512 952s-117-11.6-171.2-34.5c-52.4-22.2-99.4-53.9-139.9-94.3-40.4-40.4-72.2-87.5-94.3-139.9C83.6 629 72 571.4 72 512s11.6-117 34.5-171.2c22.2-52.4 53.9-99.4 94.3-139.9 40.4-40.4 87.5-72.2 139.9-94.3C395 83.6 452.6 72 512 72s117 11.6 171.2 34.5c52.4 22.2 99.4 53.9 139.9 94.3 40.4 40.4 72.2 87.5 94.3 139.9C940.4 395 952 452.6 952 512s-11.6 117-34.5 171.2c-22.2 52.4-53.9 99.5-94.4 139.9zM512 0C229.2 0 0 229.2 0 512s229.2 512 512 512 512-229.2 512-512S794.8 0 512 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.filter:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M892.377 128H131.622c-38.958 0-60.468 44.677-35.731 74.501l279.398 336.55-0.12 366.609c0 18.154 20.795 33.007 46.248 33.007l183.198-88.646c32.624-17.682 44.098-32.064 44.934-58.351l1.793-255.802 276.767-333.367C952.846 172.677 931.336 128 892.377 128"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ellipsis:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M832 597.333c-58.91 0-106.667-47.756-106.667-106.667S773.09 384 832 384s106.667 47.756 106.667 106.667S890.91 597.333 832 597.333z m-320 0c-58.91 0-106.667-47.756-106.667-106.667S453.09 384 512 384s106.667 47.756 106.667 106.667S570.91 597.333 512 597.333z m-320 0c-58.91 0-106.667-47.756-106.667-106.667S133.09 384 192 384s106.667 47.756 106.667 106.667S250.91 597.333 192 597.333z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.bell:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M768 810.667V469.333c0-141.385-114.615-256-256-256s-256 114.615-256 256v341.333h512zM426.667 896H128c-23.564 0-42.667-19.103-42.667-42.667s19.103-42.667 42.667-42.667h42.667V469.333c0-174.091 130.332-317.742 298.746-338.702-0.053-0.87-0.08-1.747-0.08-2.631V85.333c0-23.564 19.103-42.667 42.667-42.667s42.667 19.103 42.667 42.667V128c0 0.884-0.027 1.761-0.08 2.631 168.415 20.961 298.746 164.611 298.746 338.702v341.333H896c23.564 0 42.667 19.102 42.667 42.667S919.564 896 896 896H597.333c0 47.128-38.205 85.333-85.333 85.333S426.667 943.128 426.667 896z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.bars:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M937.095 855.09H328.752c-24.319 0-44.117-19.55-44.117-43.565s19.797-43.565 44.117-43.565h608.465c24.319 0 44.116 19.55 44.116 43.565-0.122 24.136-19.797 43.565-44.238 43.565zM42.667 819.972c0-41.989 34.47-76.028 76.99-76.028s76.99 34.039 76.99 76.028S162.177 896 119.657 896s-76.99-34.039-76.99-76.028z m894.428-272.854H328.752c-24.319 0-44.117-19.55-44.117-43.565s19.797-43.565 44.117-43.565h608.465c24.319 0 44.116 19.55 44.116 43.565-0.122 24.014-19.797 43.565-44.238 43.565zM42.667 512c0-41.989 34.47-76.028 76.99-76.028s76.99 34.039 76.99 76.028-34.47 76.028-76.99 76.028-76.99-34.039-76.99-76.028z m894.428-272.975H328.752c-24.319 0-44.117-19.55-44.117-43.565 0-24.015 19.797-43.565 44.117-43.565h608.465c24.319 0 44.116 19.55 44.116 43.565-0.122 24.135-19.797 43.565-44.238 43.565zM42.667 204.028c0-41.989 34.47-76.028 76.99-76.028s76.99 34.039 76.99 76.028c0 41.989-34.47 76.028-76.99 76.028s-76.99-34.04-76.99-76.028z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.file_text:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M543.264 759.376H292.169c-19.985 0-36.291 16.385-36.291 36.466s16.307 36.466 36.291 36.466h251.096c19.985 0 36.291-16.385 36.291-36.466s-16.307-36.466-36.292-36.466zM255.877 606.614c0 20.081 16.307 36.466 36.291 36.466h439.908c19.985 0 36.291-16.385 36.291-36.466s-16.306-36.466-36.291-36.466H292.169c-19.985 0-36.292 16.385-36.292 36.466z m36.292-225.817c-19.985 0-36.291 16.385-36.291 36.466s16.307 36.465 36.291 36.465h251.096c19.985 0 36.291-16.385 36.291-36.465 0-20.081-16.306-36.466-36.291-36.466H292.169z m352.735-128.493V93.136l141.732 159.168H644.904z m-7.356 77.86h180.966V944.17c-0.491 0.616-2.33 1.971-5.149 1.971H210.636c-2.82 0-4.659-1.232-5.149-1.971V79.954c0.49-0.739 2.452-2.095 5.149-2.095h356.782v181.836c0 38.807 31.509 70.469 70.13 70.469zM665.992 0H210.636C165.027 0 128 35.604 128 79.461v865.078c0 43.858 37.027 79.461 82.636 79.461h602.728c45.609 0 82.636-35.603 82.636-79.461V258.217L665.992 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.usergroup:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M738.137 175.13c-35.319-35.917-84.139-58.172-138.042-58.172-53.912 0-102.747 22.25-138.072 58.172-35.32 35.921-57.201 85.553-57.201 140.377 0 54.818 21.881 104.451 57.201 140.398 35.223 35.807 83.889 58.015 137.629 58.146h0.857c53.74-0.131 102.406-22.339 137.623-58.146 35.33-35.947 57.205-85.58 57.205-140.398-0.001-54.823-21.876-104.456-57.2-140.377z m211.277 735.603c-7.796-84.966-44.979-161.219-101.109-218.153-63.39-64.285-150.99-104.11-247.778-104.238h-0.877c-96.823 0.129-184.422 39.959-247.793 104.238-56.133 56.934-93.314 133.187-101.109 218.153h698.666z m32.291 70.142v0.458H213.414v-0.007a35.66 35.66 0 0 1-0.732 0.007c-20.16 0-36.524-16.635-36.524-37.135 0-118.682 47.514-226.233 124.334-304.147 42.077-42.705 92.963-76.472 149.643-98.27a270.845 270.845 0 0 1-39.771-33.363c-48.543-49.358-78.58-117.598-78.58-192.917 0-75.32 30.037-143.527 78.58-192.911 48.555-49.375 115.641-79.924 189.73-79.924 74.064 0 141.141 30.549 189.71 79.924 48.559 49.384 78.591 117.591 78.591 192.911 0 75.319-30.031 143.559-78.591 192.917a270.566 270.566 0 0 1-39.796 33.363c56.68 21.798 107.566 55.565 149.684 98.27C976.488 717.965 1024 825.516 1024 944.198c0 20.5-16.358 37.135-36.545 37.135-1.956 0-3.877-0.156-5.75-0.458zM88.114 725.333H128c23.564 0 42.667 19.103 42.667 42.667S151.564 810.667 128 810.667H42.667l-0.357-0.001-0.351 0.001C18.832 810.667 0.074 791.639 0 768.14v-0.139C0 653.112 63.808 553.39 157.333 503.438c-44.932-39.131-73.416-97.228-73.416-162.103C83.917 223.51 177.842 128 293.711 128c23.172 0 41.954 19.102 41.954 42.661 0 23.569-18.782 42.673-41.954 42.673h-0.005c-69.519 0-125.871 57.309-125.871 128.001 0 70.692 56.352 127.996 125.876 127.996 23.172 0 41.954 19.109 41.954 42.668 0 23.564-18.782 42.671-41.954 42.671-101.498-0.001-186.159 73.292-205.597 170.663z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.star_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M499.7965 0c-17.717 0-34.989 4.792-50.032 13.929-16.38 9.917-29.306 24.291-37.44 41.674L310.2565 272.889 82.1625 307.766c-35.991 5.46-65.52 30.309-77.109 64.851-11.589 34.543-2.897 72.094 22.509 98.169l167.923 172.157-39.669 242.914c-4.569 28.08 3.343 56.494 21.729 78.111 18.497 21.729 45.351 34.209 73.766 34.209 16.269 0 32.426-4.234 46.8-12.146l201.686-111.429 201.685 111.54c14.374 7.911 30.531 12.146 46.8 12.146 28.414 0 55.269-12.48 73.766-34.209 18.386-21.617 26.297-50.031 21.729-78.111l-39.669-242.914L972.0305 470.897c25.405-26.074 33.986-63.626 22.508-98.168-11.589-34.543-41.117-59.392-77.108-64.852l-228.094-34.988L587.2675 55.603c-8.134-17.383-21.06-31.757-37.44-41.674C534.7845 4.792 517.5135 0 499.7965 0z m0 80.229c5.905 0 11.923 3.12 14.931 9.471L631.1705 337.851c2.34 5.015 7.02 8.468 12.369 9.249l261.745 40.003c13.26 2.006 18.609 18.163 9.249 27.746L724.2135 609.96c-3.677 3.789-5.349 9.026-4.457 14.151l44.794 274.783c1.783 10.586-6.685 19.166-16.268 19.166-2.674 0-5.349-0.669-7.912-2.117L507.7075 787.354a16.691 16.691 0 0 0-7.911-2.006c-2.674 0-5.46 0.669-7.912 2.006L259.2225 915.943c-2.563 1.449-5.349 2.117-7.911 2.117-9.471 0-17.94-8.469-16.269-19.166l44.794-274.783c0.891-5.126-0.78-10.363-4.457-14.151L84.9475 414.848c-9.36-9.583-3.9-25.74 9.249-27.746L356.0535 347.1c5.46-0.78 10.029-4.346 12.369-9.249L484.8645 89.7c3.009-6.352 9.026-9.471 14.932-9.471z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.star:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M499.7965 0c-17.717 0-34.989 4.792-50.032 13.929-16.38 9.917-29.306 24.291-37.44 41.674L310.2565 272.889 82.1625 307.766c-35.991 5.46-65.52 30.309-77.109 64.851-11.589 34.543-2.897 72.094 22.509 98.169l167.923 172.157-39.669 242.914c-4.569 28.08 3.343 56.494 21.729 78.111 18.497 21.729 45.351 34.209 73.766 34.209 16.269 0 32.426-4.234 46.8-12.146l201.686-111.429 201.685 111.54c14.374 7.911 30.531 12.146 46.8 12.146 28.414 0 55.269-12.48 73.766-34.209 18.386-21.617 26.297-50.031 21.729-78.111l-39.669-242.914L972.0305 470.897c25.405-26.074 33.986-63.626 22.508-98.168-11.589-34.543-41.117-59.392-77.108-64.852l-228.094-34.988L587.2675 55.603c-8.134-17.383-21.06-31.757-37.44-41.674C534.7845 4.792 517.5135 0 499.7965 0z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.folder:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M947.216 860.331c0 1.226-0.343 2.117-1.143 3.009-0.571 0.557-0.914 0.557-1.143 0.557H78.839c-0.914 0-2.399-1.56-2.399-3.789V305.631h870.662v554.7h0.114zM76.554 163.78c0-2.117 1.371-3.789 2.399-3.789h327.469c1.371 0 3.999 0.892 6.627 3.009 2.857 2.228 4.342 4.68 4.799 6.017v0.111l16.682 57.721H76.554V163.78z m868.605 54.155H513.942c-1.028-0.334-2.857-1.783-3.428-2.674L492.69 152.86c-4.342-18.497-15.654-35.546-31.764-48.138-15.996-12.48-35.42-19.389-54.502-19.389H78.954C35.421 85.333 0 120.545 0 163.78v696.551c0 43.235 35.421 78.336 78.954 78.336H945.16c20.795 0 40.448-8.023 55.302-22.509 15.197-14.932 23.652-34.766 23.537-55.938V296.382c0.114-43.235-35.307-78.447-78.84-78.447z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.folder_add:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M76.55 163.78v63.069h357.957l-16.681-57.721v-0.111c-0.457-1.337-1.942-3.789-4.799-6.017-2.628-2.117-5.256-3.009-6.627-3.009H78.949c-1.028 0-2.399 1.672-2.399 3.789z m947.394 774.312l-0.001 0.575H771.204l252.74-0.575z m-0.001-212.759H896v-128h-85.333v128h-128v85.333h128v127.981H896v-127.98h127.943v49.553l0.001 0.214v-49.767h0.037v-85.333h-0.037V512H947.05V305.631H76.436v554.477c0 2.229 1.485 3.789 2.399 3.789H597.3v74.77h173.904H78.949C35.419 938.667 0 903.566 0 860.331V163.78c0-43.235 35.419-78.447 78.949-78.447H406.4c19.08 0 38.504 6.909 54.499 19.389 16.11 12.591 27.421 29.641 31.763 48.138l17.824 62.401c0.571 0.891 2.399 2.34 3.427 2.674h431.194c43.531 0 78.95 35.212 78.835 78.447v428.951z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.share:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M855.139 941.517c-47.774 0-86.654-39.011-86.654-86.944 0-47.934 38.88-86.945 86.654-86.945 47.774 0 86.654 39.011 86.654 86.945 0 47.934-38.881 86.944-86.654 86.944zM225.757 658.833c-79.243 0-143.663-64.636-143.663-144.145s64.42-144.145 143.663-144.145S369.42 435.18 369.42 514.688s-64.421 144.145-143.663 144.145zM855.139 82.368c47.774 0 86.654 39.011 86.654 86.944 0 47.934-38.88 86.944-86.654 86.944-47.774 0-86.654-39.01-86.654-86.944 0-47.933 38.88-86.944 86.654-86.944z m0 602.892c-58.833 0-110.826 30.431-141.041 76.42L444.672 569.944c4.447-17.732 6.841-36.151 6.841-55.255 0-30.431-6.043-59.488-16.989-86.029l293.37-148.263c31.013 35.693 76.506 58.23 127.244 58.23 93.039 0 168.747-75.962 168.747-169.313S948.178 0 855.139 0C762.1 0 686.391 75.962 686.391 169.313c0 12.927 1.482 25.511 4.219 37.638L389.715 359.104c-41.161-43.701-99.424-70.928-163.959-70.928C101.248 288.175 0 389.763 0 514.688s101.248 226.513 225.757 226.513c75.708 0 142.865-37.638 183.912-95.181l277.179 197.227a188.78 188.78 0 0 0-0.342 11.44c0 93.351 75.708 169.313 168.747 169.313C948.292 1024 1024 948.038 1024 854.687S948.178 685.26 855.139 685.26z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.download:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M945.086 648.25c-20.01 0-36.248 16.159-36.248 36.071v203.708c0 11.78-9.638 21.476-21.581 21.476H136.638c-11.838 0-21.581-9.591-21.581-21.476V684.216c0-19.912-16.238-36.071-36.248-36.071s-36.143 16.263-36.143 36.071v232.377c0 35.758 29.229 64.74 65.057 64.74h808.552c35.933 0 65.057-29.086 65.057-64.74V684.216c0.001-19.807-16.237-35.966-36.246-35.966zM340.937 484.976c-10.498 0-20.997 3.975-28.985 12.037-16.09 15.898-16.09 41.789 0 57.801L479.015 720.95c15.976 16.012 41.994 16.012 58.084 0l167.063-166.136c16.09-15.898 16.09-41.789 0-57.801-8.102-7.949-18.487-11.923-29.099-11.923s-21.111 3.974-29.099 11.923l-96.883 96.411V83.548c0-22.598-18.372-40.881-41.081-40.881-22.709 0-41.081 18.283-41.081 40.881v509.876l-96.883-96.525c-8.102-7.948-18.601-11.923-29.099-11.923z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.plus:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M937.674 467.273h-386.26V86.781c0-24.386-19.525-44.115-43.659-44.115s-43.659 19.729-43.659 44.115v380.491H86.326c-24.134 0-43.659 19.729-43.659 44.115s19.525 44.115 43.659 44.115h377.771v381.716c0 24.386 19.525 44.115 43.659 44.115s43.659-19.729 43.659-44.115V555.502h386.26c24.134 0 43.659-19.729 43.659-44.115s-19.526-44.114-43.66-44.114z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.minus:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M544.248 467.273H163.721c-19.746 0-35.721 19.729-35.721 44.115s15.975 44.115 35.721 44.115h696.557c19.746 0 35.721-19.729 35.721-44.115s-15.975-44.115-35.721-44.115h-316.03z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.reload:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M896.174 542.632c-23.556 0-42.604 19.542-42.604 43.708 0 93.66-35.504 181.655-100.087 247.795-64.471 66.256-150.243 102.68-241.539 102.68-91.296 0-177.068-36.424-241.539-102.68-64.583-66.256-100.087-154.251-100.087-247.795 0-93.545 35.504-181.655 100.087-247.795 64.583-66.256 150.356-102.68 241.539-102.68h1.015l-74.615 99.789c-14.314 19.194-10.82 46.599 7.89 61.168 7.777 6.128 16.794 9.019 25.811 9.019 12.736 0 25.472-5.897 33.813-17.114l133.788-179.111c14.314-19.195 10.82-46.599-7.89-61.168L454.461 8.999c-18.71-14.685-45.423-10.985-59.624 8.094-14.314 19.195-10.82 46.599 7.89 61.169l89.831 70.65c-50.72 2.312-99.974 13.644-146.637 33.995-50.833 22.085-96.48 53.652-135.591 93.776-39.223 40.239-69.993 87.069-91.408 139.103-22.317 53.999-33.588 111.352-33.588 170.439 0 59.087 11.271 116.44 33.588 170.439 21.528 52.149 52.298 98.979 91.408 139.103 39.223 40.239 84.871 71.806 135.591 93.776 52.636 22.895 108.54 34.458 166.136 34.458 57.595 0 113.499-11.563 166.135-34.458 50.72-21.854 96.368-53.421 135.478-93.545 39.224-40.239 69.993-87.069 91.408-139.103 22.317-53.999 33.588-111.352 33.588-170.439 0.113-24.167-19.048-43.824-42.492-43.824z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.user_add:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M191.238 315.412c0-128.501 104.343-232.951 232.457-232.951 128.114 0 232.457 104.45 232.457 232.951 0 128.501-104.229 232.951-232.457 232.951S191.238 443.798 191.238 315.412z m455.086 222.987c59.429-59.555 92.229-138.808 92.229-222.987 0-84.178-32.686-163.432-92.229-222.987C586.895 32.87 507.81 0 423.81 0S260.724 32.755 201.296 92.425c-59.429 59.555-92.229 138.809-92.229 222.987 0 84.179 32.686 163.433 92.229 222.987 34.743 34.817 76.229 60.471 121.486 75.818-16 4.467-31.886 9.849-47.314 16.492-45.371 19.241-86.171 46.842-121.143 81.888s-62.514 75.932-81.714 121.4c-19.886 47.186-29.943 97.12-29.943 148.773 0 22.791 18.4 41.23 41.143 41.23 22.743 0 41.143-18.439 41.143-41.23 0-80.055 31.086-155.301 87.543-211.878s129.946-71.376 211.429-87.729c81.48-16.353 187.655-109.947 222.398-144.764z m79.009 314.662v128.272c0 23.564 19.103 42.667 42.667 42.667s42.667-19.103 42.667-42.667V853.061h127.909c23.614 0 42.758-19.143 42.758-42.757 0-23.614-19.143-42.757-42.758-42.757H810.667V640c0-23.564-19.103-42.667-42.667-42.667S725.333 616.436 725.333 640v127.547H597.424c-23.614 0-42.758 19.143-42.758 42.757 0 23.614 19.143 42.757 42.758 42.757h127.909z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.user_delete:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M191.238 315.412c0-128.501 104.343-232.951 232.457-232.951 128.114 0 232.457 104.45 232.457 232.951 0 128.501-104.229 232.951-232.457 232.951S191.238 443.798 191.238 315.412z m455.086 222.987c59.429-59.555 92.229-138.808 92.229-222.987 0-84.178-32.686-163.432-92.229-222.987C586.895 32.87 507.81 0 423.81 0S260.724 32.755 201.296 92.425c-59.429 59.555-92.229 138.809-92.229 222.987 0 84.179 32.686 163.433 92.229 222.987 34.743 34.817 76.229 60.471 121.486 75.818-16 4.467-31.886 9.849-47.314 16.492-45.371 19.241-86.171 46.842-121.143 81.888s-62.514 75.932-81.714 121.4c-19.886 47.186-29.943 97.12-29.943 148.773 0 22.791 18.4 41.23 41.143 41.23 22.743 0 41.143-18.439 41.143-41.23 0-80.055 31.086-155.301 87.543-211.878s129.946-71.376 211.429-87.729c81.48-16.353 187.655-109.947 222.398-144.764z m121.559 332.49l90.627 90.627c16.662 16.662 43.677 16.662 60.34 0 16.663-16.662 16.663-43.677 0-60.34l-90.627-90.627 90.627-90.627c16.698-16.698 16.698-43.77 0-60.468s-43.77-16.698-60.468 0l-90.627 90.627-90.264-90.264c-16.662-16.662-43.677-16.662-60.34 0-16.663 16.662-16.663 43.677 0 60.34l90.264 90.264-90.264 90.264c-16.698 16.698-16.698 43.77 0 60.468s43.77 16.698 60.468 0l90.264-90.264z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.user_right:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M191.238 315.412c0-128.501 104.343-232.951 232.457-232.951 128.114 0 232.457 104.45 232.457 232.951 0 128.501-104.229 232.951-232.457 232.951S191.238 443.798 191.238 315.412z m455.086 222.987c59.429-59.555 92.229-138.808 92.229-222.987 0-84.178-32.686-163.432-92.229-222.987C586.895 32.87 507.81 0 423.81 0S260.724 32.755 201.296 92.425c-59.429 59.555-92.229 138.809-92.229 222.987 0 84.179 32.686 163.433 92.229 222.987 34.743 34.817 76.229 60.471 121.486 75.818-16 4.467-31.886 9.849-47.314 16.492-45.371 19.241-86.171 46.842-121.143 81.888s-62.514 75.932-81.714 121.4c-19.886 47.186-29.943 97.12-29.943 148.773 0 22.791 18.4 41.23 41.143 41.23 22.743 0 41.143-18.439 41.143-41.23 0-80.055 31.086-155.301 87.543-211.878s129.946-71.376 211.429-87.729c81.48-16.353 187.655-109.947 222.398-144.764z m42.086 454.629l230.439-230.439c16.698-16.698 16.698-43.77 0-60.468s-43.77-16.698-60.468 0L648.74 911.762l-88.897-88.897c-16.662-16.662-43.677-16.662-60.34 0-16.663 16.662-16.663 43.677 0 60.34l109.749 109.749a42.732 42.732 0 0 0 7.898 10.867c8.588 8.588 19.921 12.759 31.175 12.513 11.585 0.547 23.35-3.602 32.197-12.449a42.636 42.636 0 0 0 7.888-10.857z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.lock:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M476.224 694.659V796.8c0 19.96 16.145 36.224 35.96 36.224s35.96-16.264 35.96-36.224V694.413c19.081-12.321 30.456-33.144 30.456-56.184 0-36.963-29.844-67.026-66.538-67.026-36.694 0-66.538 30.063-66.538 67.026-0.001 22.794 11.741 44.232 30.7 56.43z m-83.54-590.546h0.245l1.468-0.616c37.061-17.003 76.568-25.628 117.542-25.628 40.73 0 80.359 8.625 117.664 25.382 36.204 16.387 68.984 40.043 97.483 70.106 28.621 30.433 51.004 65.794 66.783 105.098 16.39 40.906 24.707 84.276 24.707 129.248v33.76H205.301V407.58c0-44.479 8.317-87.972 24.707-129.124 15.901-39.674 38.406-74.912 66.783-104.975 28.132-29.818 60.3-53.228 95.893-69.368z m426.137 415.218v425.198c0 0.739-0.122 1.232-0.245 1.602h-613.03a4.866 4.866 0 0 1-0.245-1.602V519.331h613.52z m46.968-269.83c-19.57-48.791-47.335-92.407-82.439-129.494-34.982-37.456-76.078-67.026-121.946-87.849C613.947 10.842 563.677 0 512.061 0c-51.738 0-102.008 10.842-149.466 32.281-45.867 20.699-86.842 50.27-121.946 87.726-35.348 37.579-63.113 81.195-82.439 129.494C138.152 299.524 128 352.751 128 407.703V944.53c0 43.863 33.636 79.471 75.1 79.471h617.678c41.464 0 75.1-35.608 74.978-79.471V470.786l0.244-21.808v-41.275c0-54.706-10.152-107.933-30.211-158.202z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.unlock:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M476.462 694.617V796.8c0 19.98 16.097 36.192 35.935 36.192 19.837 0 35.934-16.212 35.934-36.192V694.388c19.044-12.33 30.493-33.11 30.493-56.172 0-36.991-29.813-67.018-66.541-67.018-36.728 0-66.541 30.027-66.541 67.018 0.114 22.72 11.789 44.184 30.72 56.401z m342.681 249.806c0 0.685-0.113 1.256-0.227 1.598H205.764c-0.113-0.343-0.227-0.913-0.227-1.598V519.25h613.606v425.173zM205.537 441.385v-33.909c0-44.527 8.275-87.912 24.712-129.128 15.87-39.617 38.428-74.896 66.768-104.923 28.113-29.799 60.306-53.204 95.901-69.416h0.227l1.474-0.571c37.068-17.012 76.63-25.574 117.552-25.574 40.695 0 80.371 8.677 117.665 25.346 36.161 16.441 69.035 40.074 97.488 70.101 19.838 21.122 45.797 67.361 60.193 94.876 7.028 13.472 20.858 21.806 35.934 21.806h15.53c20.518 0 34.801-20.893 27.092-40.188 0-0.114-0.113-0.228-0.113-0.342-19.611-48.751-47.383-92.364-82.411-129.47-35.028-37.448-76.063-67.018-121.973-87.797C614.079 10.846 563.861 0 512.17 0S410.148 10.846 362.651 32.311c-45.91 20.665-86.832 50.235-121.973 87.683-35.368 37.563-63.14 81.176-82.411 129.47C138.202 299.471 128 352.674 128 407.705v536.832c0 43.842 33.667 79.463 75.156 79.463h617.687c41.489 0 75.156-35.621 74.93-79.463L896 514.569c0-40.417-32.42-73.07-72.549-73.07H205.537v-0.114z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.logout:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M981.333 513.151a38.237 38.237 0 0 0-7.894-22.28L860.533 345.793c-12.776-16.317-36.25-19.246-52.454-6.38s-19.112 36.505-6.336 52.822l65.334 84.202H443.29c-20.67 0-37.393 16.841-37.393 37.655v0.418c0 20.815 16.723 37.655 37.393 37.655h423.787l-65.438 84.097c-12.776 16.317-9.868 40.061 6.336 52.822 6.855 5.439 14.957 8.054 23.059 8.054 11.114 0 22.124-4.916 29.499-14.435l112.906-145.078c5.09-6.485 7.686-14.33 7.894-22.279v-1.151-1.044z m-190.808 272.06c-36.146 37.76-78.525 67.466-126.097 88.281-49.234 21.547-101.584 32.426-155.804 32.426-104.492 0-202.753-41.003-276.604-115.372-73.955-74.37-114.567-173.32-114.567-278.546s40.717-204.176 114.568-278.546c73.851-74.369 172.111-115.372 276.604-115.372 104.492 0 202.753 41.003 276.604 115.372 14.646 14.749 38.328 14.749 52.87 0 14.646-14.748 14.646-38.597 0-53.24-42.69-43.199-92.547-76.985-148.014-100.624-57.44-24.476-118.515-36.923-181.46-36.923-62.945 0-123.916 12.447-181.356 36.923-55.466 23.639-105.323 57.425-148.118 100.519-42.794 43.094-76.344 93.302-99.818 149.157C54.923 387.214 42.667 448.613 42.667 512s12.36 124.786 36.666 182.734c23.474 55.856 57.024 106.063 99.818 149.157 42.794 43.095 92.651 76.88 148.118 100.519 57.44 24.476 118.515 36.923 181.46 36.923 64.503 0 126.928-12.97 185.614-38.701 56.609-24.79 107.193-60.144 150.195-105.121 14.334-14.958 13.918-38.806-1.039-53.241-14.958-14.435-38.64-14.016-52.974 0.941z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.login:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M617.077 513.151a38.277 38.277 0 0 0-7.88-22.28L496.492 345.793c-12.753-16.317-36.186-19.246-52.361-6.38-16.175 12.866-19.078 36.505-6.325 52.822l65.217 84.202H79.993c-20.633 0-37.326 16.841-37.326 37.655v0.418c0 20.815 16.693 37.655 37.326 37.655h423.031l-65.321 84.097c-12.753 16.317-9.85 40.061 6.325 52.822 6.843 5.439 14.93 8.054 23.018 8.054 11.094 0 22.085-4.916 29.446-14.435l112.704-145.078c5.081-6.485 7.673-14.33 7.88-22.279v-1.151l0.001-1.044z m-382.27 272.06c-14.308-14.958-37.948-15.376-52.879-0.941-14.931 14.435-15.345 38.283-1.037 53.241 42.925 44.977 93.419 80.332 149.927 105.121 58.582 25.731 120.896 38.701 185.284 38.701 62.833 0 123.799-12.447 181.136-36.923 55.367-23.639 105.136-57.425 147.854-100.519 42.718-43.095 76.208-93.302 99.641-149.157 24.262-57.948 36.6-119.347 36.6-182.734s-12.235-124.786-36.6-182.734c-23.433-55.855-56.923-106.063-99.641-149.157-42.718-43.095-92.486-76.88-147.854-100.519-57.337-24.476-118.2-36.923-181.032-36.923S392.407 55.114 335.07 79.59c-55.367 23.639-105.136 57.425-147.75 100.624-14.619 14.644-14.619 38.492 0 53.24 14.516 14.749 38.156 14.749 52.775 0 73.719-74.369 171.805-115.372 276.111-115.372s202.391 41.003 276.111 115.372c73.719 74.37 114.364 173.32 114.364 278.546S866.14 716.176 792.317 790.546c-73.719 74.37-171.805 115.372-276.111 115.372-54.123 0-106.38-10.878-155.526-32.426-47.488-20.815-89.791-50.521-125.873-88.281z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.mail:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M905.997 824.178H118.003V229.05l316.83 248.884c21.345 20.15 49.387 31.223 79.522 31.223h0.523c30.239-0.1 58.49-11.372 79.731-31.821L906.102 229.15v595.028h-0.105zM825.22 199.823L544.698 423.369l-1.674 1.297-1.465 1.496c-7.115 7.182-16.742 11.072-27.1 11.172h-0.209c-10.254 0-19.881-3.89-26.996-10.873l-1.465-1.396-286.486-225.242H825.22zM905.997 128H118.003c-41.644 0-75.336 32.121-75.336 71.823v624.355c0 39.702 33.692 71.822 75.336 71.822h787.995c41.644 0 75.336-32.121 75.336-71.822V199.823C981.333 160.22 947.537 128 905.997 128z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.appstore_o:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M910.023 374.047c0 4.195-1.573 7.865-4.614 11.221-1.678 1.678-5.453 4.509-10.906 4.509H650.267c-8.704 0-15.835-7.131-15.835-15.835V129.811c0-8.704 7.131-15.835 15.835-15.835h243.921c8.704 0 15.835 7.131 15.835 15.835v244.236z m-15.73-331.38H650.267c-48.134 0-87.145 39.116-87.145 87.145v243.921c0 48.134 39.115 87.145 87.145 87.145h244.131c23.281 0 45.093-9.018 61.557-25.483 16.464-16.464 25.483-38.381 25.378-61.662V129.811c0.104-48.029-39.011-87.144-87.04-87.144z m15.73 851.835c0 4.195-1.573 7.865-4.614 11.221-1.678 1.678-5.453 4.509-10.906 4.509H650.267c-8.704 0-15.835-7.131-15.835-15.835v-244.13c0-8.704 7.131-15.835 15.835-15.835h243.921c8.704 0 15.835 7.131 15.835 15.835v244.235z m-15.73-331.38H650.267c-48.134 0-87.145 39.115-87.145 87.145v243.921c0 48.134 39.115 87.145 87.145 87.145h244.131c23.281 0 45.093-9.019 61.557-25.483s25.483-38.381 25.378-61.662V650.267c0.104-48.134-39.011-87.145-87.04-87.145zM389.672 374.047c0 4.195-1.573 7.865-4.614 11.221-1.678 1.678-5.453 4.509-10.906 4.509h-244.34c-8.704 0-15.835-7.131-15.835-15.835V129.811c0-8.704 7.131-15.835 15.835-15.835h243.921c8.704 0 15.835 7.131 15.835 15.835v244.236h0.104z m-15.835-331.38H129.811c-48.029 0-87.145 39.116-87.145 87.145v243.921c0 48.134 39.115 87.145 87.145 87.145h244.236c23.281 0 45.093-9.018 61.557-25.483 16.464-16.464 25.483-38.381 25.378-61.662V129.811c0-48.029-39.011-87.144-87.145-87.144z m15.835 851.835c0 4.195-1.573 7.865-4.614 11.221-1.678 1.678-5.453 4.509-10.906 4.509h-244.34c-8.704 0-15.835-7.131-15.835-15.835v-244.13c0-8.704 7.131-15.835 15.835-15.835h243.921c8.704 0 15.835 7.131 15.835 15.835v244.236h0.104z m-15.835-331.38H129.811c-48.134 0-87.145 39.115-87.145 87.145v243.921c0 48.134 39.115 87.145 87.145 87.145h244.236c23.281 0 45.093-9.019 61.557-25.483s25.483-38.381 25.378-61.662V650.267c0-48.134-39.011-87.145-87.145-87.145z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.area_chart:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M338.875 509.052l118.094 103.229L608.708 350.76 759.24 452.562 938.667 128v682.667h-768l168.208-301.615zM128 896h810.667c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667H85.333c-23.564 0-42.667-19.102-42.667-42.667V85.333c0-23.564 19.103-42.667 42.667-42.667S128 61.769 128 85.333V896z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.bar_chart:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M384 500.584V768c0 23.564-19.103 42.667-42.667 42.667S298.666 791.564 298.666 768V500.584C273.16 485.83 256 458.252 256 426.667c0-47.128 38.205-85.333 85.333-85.333s85.333 38.205 85.333 85.333c0.001 31.585-17.16 59.163-42.666 73.917z m256-213.333V768c0 23.564-19.103 42.667-42.667 42.667S554.667 791.564 554.667 768V287.251C529.161 272.496 512 244.919 512 213.333 512 166.205 550.205 128 597.333 128s85.333 38.205 85.333 85.333c0.001 31.586-17.16 59.163-42.666 73.918z m256 213.333V768c0 23.564-19.103 42.667-42.667 42.667S810.667 791.564 810.667 768V500.584C785.161 485.83 768 458.252 768 426.667c0-47.128 38.205-85.333 85.333-85.333s85.333 38.205 85.333 85.333c0.001 31.585-17.16 59.163-42.666 73.917zM128 896h810.667c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667H85.333c-23.564 0-42.667-19.102-42.667-42.667V85.333c0-23.564 19.103-42.667 42.667-42.667S128 61.769 128 85.333V896z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.bar_chart_1:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M298.667 42.667h426.667c23.564 0 42.667 19.103 42.667 42.667S748.897 128 725.333 128H298.667C275.103 128 256 108.897 256 85.333s19.103-42.666 42.667-42.666z m-128 128h682.667c23.564 0 42.667 19.103 42.667 42.667S876.897 256 853.333 256H170.667C147.103 256 128 236.897 128 213.333s19.103-42.666 42.667-42.666z m199.89 489.451c-8.303 7.861-19.062 11.792-29.82 11.792-10.759 0-21.518-3.931-29.704-11.904-16.489-15.723-16.489-41.328 0-57.163l171.204-164.3c16.372-15.835 43.035-15.835 59.524 0l171.204 164.3c16.489 15.723 16.489 41.328 0 57.163-8.303 7.861-18.944 11.792-29.82 11.792s-21.635-3.931-29.821-11.792L554.04 564.66v248.244c0 22.348-18.828 40.429-42.1 40.429-23.272 0-42.1-18.081-42.1-40.429V564.66l-99.283 95.458zM85.333 384v512h853.333V384H85.333z m0-85.333h853.333c47.128 0 85.333 33.96 85.333 75.852v530.963c0 41.892-38.205 75.852-85.333 75.852H85.333C38.205 981.333 0 947.373 0 905.481V374.519c0-41.892 38.205-75.852 85.333-75.852z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.idcard:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M426.667 469.333C473.795 469.333 512 431.128 512 384s-38.205-85.333-85.333-85.333-85.333 38.205-85.333 85.333 38.204 85.333 85.333 85.333z m-90.765 59.223C287.9 498.353 256 444.902 256 384c0-94.257 76.41-170.667 170.667-170.667S597.333 289.743 597.333 384c0 60.902-31.9 114.353-79.902 144.556C614.014 565.187 682.667 658.576 682.667 768h-85.333c0-94.257-76.41-170.667-170.667-170.667S256 673.743 256 768h-85.333c0-109.424 68.653-202.813 165.235-239.444zM682.667 512h128c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667h-128c-23.564 0-42.667-19.103-42.667-42.667S659.103 512 682.667 512z m0-128h128c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667h-128c-23.564 0-42.667-19.103-42.667-42.667S659.103 384 682.667 384z m0-128h128c23.564 0 42.667 19.103 42.667 42.667s-19.103 42.667-42.667 42.667h-128c-23.564 0-42.667-19.103-42.667-42.667S659.103 256 682.667 256zM128 170.667v682.667h768V170.667H128z m-7.111-85.334h782.222c43.201 0 78.222 38.205 78.222 85.333v682.667c0 47.128-35.021 85.333-78.222 85.333H120.889c-43.201 0-78.222-38.205-78.222-85.333V170.667c0-47.129 35.021-85.334 78.222-85.334z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.eye:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M627.536 510.905c0 31.361-12.024 60.877-33.918 83.13-21.894 22.253-50.933 34.474-81.789 34.474-30.855 0-59.895-12.222-81.788-34.474-21.894-22.252-33.918-51.769-33.918-83.13 0-31.361 12.024-60.877 33.918-83.13 21.893-22.252 50.933-34.474 81.788-34.474 30.855 0 59.895 12.221 81.789 34.474 21.894 22.252 33.918 51.768 33.918 83.13zM511.83 311.093c-108.446 0-196.587 89.702-196.587 199.811 0 110.11 88.254 199.811 196.587 199.811s196.587-89.702 196.587-199.811c0-110.109-88.141-199.811-196.587-199.811z m427.999 200.734c-6.466 20.062-31.535 92.469-73.054 145.045l-0.567 0.576c-35.279 44.966-78.953 80.824-129.659 106.766-64.092 32.629-139.869 49.232-225.06 49.232-85.305 0-160.968-16.603-225.06-49.232-50.593-25.711-94.153-61.684-129.659-106.881-41.745-52.806-66.928-125.444-73.394-145.622 6.466-20.062 31.649-92.584 73.394-145.621 35.619-45.197 79.293-81.054 129.772-106.766 64.206-32.629 139.982-49.117 225.287-49.117 85.645 0 161.308 16.488 224.947 49.117 50.593 25.711 94.153 61.684 129.659 106.881 41.745 53.038 66.929 125.56 73.394 145.622z m84.171-0.231c-0.341-6.457-10.096-38.394-23.709-71.6-13.953-34.244-37.548-83.822-70.218-125.214-42.766-54.421-95.514-97.888-156.771-129.018C698.094 147.37 610.067 128 511.83 128c-98.123 0-186.151 19.485-261.36 57.879-60.802 30.9-113.551 74.252-156.771 128.903-32.67 41.507-56.152 91.086-70.104 125.329C9.982 473.318 0.34 505.255 0 511.712v0.461c0.34 6.457 10.096 38.394 23.708 71.715 14.066 34.244 37.548 83.822 70.104 125.098 42.766 54.421 95.514 97.888 156.771 129.018C326.246 876.515 414.16 896 511.943 896c97.897 0 185.811-19.485 261.36-57.995 61.03-31.015 113.778-74.483 156.771-128.903 32.67-41.392 56.265-90.97 70.218-125.214 13.613-33.206 23.368-65.143 23.709-71.6v-0.231l-0.001-0.461z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.invisibility:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M684.474 584.727c3.889 3.889 8.457 2.79 10.151-2.443 0 0 13.792-42.607 13.792-71.379 0-110.11-88.141-199.811-196.587-199.811-29.457 0-73.067 15.189-73.067 15.189-5.194 1.809-6.262 6.471-2.372 10.36l50.914 50.914c3.889 3.889 11.542 6.558 17.006 5.93 0 0 1.622-0.186 7.519-0.186 30.855 0 59.895 12.221 81.789 34.474 21.894 22.253 33.918 51.769 33.918 83.13 0 5.343-0.054 5.888-0.054 5.888-0.545 5.473 2.192 13.133 6.081 17.022l50.91 50.912zM340.254 434.645c-3.889-3.889-8.499-2.804-10.244 2.412 0 0-14.766 44.128-14.766 73.847 0 110.11 88.254 199.811 196.587 199.811 30.369 0 75.462-16.237 75.462-16.237 5.175-1.863 6.227-6.57 2.338-10.459l-50.272-50.272c-3.889-3.889-11.53-6.468-16.981-5.73 0 0-3.616 0.489-10.547 0.489-30.855 0-59.895-12.222-81.788-34.474-21.894-22.252-33.918-51.769-33.918-83.13 0-6.393 0.307-8.97 0.307-8.97 0.65-5.461-2-13.112-5.889-17.001l-50.289-50.286z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
            <path
              d="M511.49 813.447c-85.305 0-160.968-16.603-225.06-49.232-50.593-25.711-94.153-61.684-129.659-106.881-41.745-52.807-70.167-136.157-70.167-136.157-1.775-5.206-1.772-13.723 0.007-18.927 0 0 28.414-83.122 70.159-136.159 17.048-21.632 49.225-51.57 49.225-51.57a9.602 9.602 0 0 0 0.25-13.883l-43.681-43.681c-3.889-3.889-10.323-3.961-14.298-0.16 0 0-35.737 34.177-54.566 57.987-32.67 41.507-56.152 91.086-70.104 125.329-13.614 33.205-21.08 61.92-21.08 61.92C1.132 507.356 0 511.763 0 511.827v0.231c0 0.063 1.144 4.467 2.543 9.786 0 0 7.553 28.723 21.165 62.044 14.066 34.244 37.548 83.822 70.104 125.098 42.766 54.421 95.514 97.888 156.771 129.018C326.246 876.515 414.16 896 511.943 896c89.357 0 231.775-45.329 231.775-45.329 5.241-1.668 6.347-6.215 2.458-10.104l-49.139-49.139c-3.889-3.889-11.429-5.95-16.756-4.58 0 0-103.409 26.599-168.791 26.599zM1000.291 439.997c-13.953-34.244-37.548-83.822-70.218-125.214-42.766-54.421-95.514-97.888-156.771-129.018C698.094 147.37 610.067 128 511.83 128c-87.942 0-227.982 43.58-227.982 43.58-5.252 1.634-6.366 6.153-2.477 10.043l48.987 48.987c3.889 3.889 11.439 5.987 16.776 4.662 0 0 100.958-25.064 164.696-25.064 85.645 0 161.308 16.488 224.947 49.117 50.593 25.711 94.153 61.684 129.659 106.881 41.745 53.037 70.159 136.159 70.159 136.159 1.779 5.204 1.782 13.722 0.007 18.927l-65.124 126.755c-2.586 4.854-4.83 8.955-4.986 9.114-0.156 0.159-3.232 3.688-6.836 7.842l-39.496 41.273a9.695 9.695 0 0 0-0.195 13.941l44.159 44.159c3.889 3.889 10.304 3.941 14.256 0.116 0 0 33.736-32.658 51.694-55.389 32.67-41.392 56.265-90.97 70.218-125.214 13.613-33.206 21.165-61.929 21.165-61.929 1.399-5.319 2.543-9.723 2.543-9.787v-0.288c0-0.095-1.144-4.64-2.543-9.96 0 0-7.553-28.723-21.166-61.928zM106.898 147.853c-3.889 3.889-3.889 10.253 0 14.142L861.763 916.86c3.889 3.889 10.253 3.889 14.142 0l43.42-43.42c3.889-3.889 3.889-10.253 0-14.142L164.461 104.433c-3.889-3.889-10.253-3.889-14.142 0l-43.421 43.42z"
              fill="''' +
                getColor(1, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.enlarge:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M128 256v512h768V256H128z m777.997-85.333c41.539 0 75.336 28.64 75.336 63.842v554.982c0 35.29-33.692 63.842-75.336 63.842H118.003c-41.644 0-75.336-28.552-75.336-63.842V234.509c0-35.29 33.692-63.842 75.336-63.842h787.994z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.logo:
        svgXml =
            '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M967.196 343.882c31.374 0 56.804 25.43 56.804 56.804 0 282.397-228.893 511.29-511.29 511.29-282.369 0-511.29-228.893-511.29-511.29 0-31.374 25.429-56.804 56.804-56.804 31.374 0 56.832 25.43 56.832 56.804 0 219.62 178.034 397.683 397.654 397.683s397.683-178.063 397.683-397.683c-0.001-31.375 25.429-56.804 56.803-56.804zM56.812 241.624c-31.374 0-56.804-25.43-56.804-56.804 0-31.374 25.429-56.804 56.804-56.804h471.525v0.029c0.711-0.029 1.422-0.029 2.133-0.029 141.199 0 255.631 114.432 255.631 255.631S671.669 639.306 530.47 639.306c-133.12 0-242.404-101.746-254.464-231.709-0.085-0.654-0.171-1.309-0.228-1.963 0-0.171-0.028-0.313-0.057-0.483h0.028c-0.114-1.479-0.228-2.958-0.228-4.466 0-31.374 25.458-56.804 56.832-56.804 29.611 0 53.931 22.699 56.548 51.627h0.057c6.059 72.875 67.072 130.162 141.511 130.162 78.422 0 142.024-63.573 142.024-142.023S608.892 241.624 530.47 241.624c-0.711 0-1.422 0.057-2.133 0.057v-0.057H56.812z"
              fill="''' +
                getColor(0, color, colors, '#333333') +
                '''"
            />
          </svg>
        ''';
        break;
      case IconNames.folder_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M64 255.337h832c35.346 0 64 28.654 64 64v512c0 35.346-28.654 64-64 64H128c-35.346 0-64-28.654-64-64v-576z"
              fill="''' +
            getColor(0, color, colors, '#CE9918') +
            '''"
            />
            <path
              d="M64 224h832c35.346 0 64 28.654 64 64v512c0 35.346-28.654 64-64 64H128c-35.346 0-64-28.654-64-64V224z"
              fill="''' +
            getColor(1, color, colors, '#F2BB0C') +
            '''"
            />
            <path
              d="M64 128h358.4c39.822 0 69.689 32 89.6 96H64v-96z"
              fill="''' +
            getColor(2, color, colors, '#CE9918') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.groupfolder_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M64.283 256.046h832c35.346 0 64 28.654 64 64v512c0 35.346-28.654 64-64 64h-768c-35.346 0-64-28.654-64-64v-576z"
              fill="''' +
            getColor(0, color, colors, '#CE9918') +
            '''"
            />
            <path
              d="M64 224h832c35.346 0 64 28.654 64 64v512c0 35.346-28.654 64-64 64H128c-35.346 0-64-28.654-64-64V224z"
              fill="''' +
            getColor(1, color, colors, '#F2BB0C') +
            '''"
            />
            <path
              d="M64 128h358.4c39.822 0 69.689 32 89.6 96H64v-96zM512 736c0-159.641 64.471-192 144-192s144 34.973 144 192H512z m144-224c-44.183 0-80-35.817-80-80s35.817-80 80-80 80 35.817 80 80-35.817 80-80 80zM224 736c0-159.641 64.471-192 144-192s144 34.973 144 192H224z m144-224c-44.183 0-80-35.817-80-80s35.817-80 80-80 80 35.817 80 80-35.817 80-80 80z"
              fill="''' +
            getColor(2, color, colors, '#CE9918') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.word_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M192 64h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H192c-35.346 0-64-28.654-64-64V128c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192 64h640c35.346 0 64 27.637 64 61.73v740.759c0 34.092-28.654 61.73-64 61.73H192c-35.346 0-64-27.637-64-61.73V125.73C128 91.637 156.654 64 192 64z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M288 608h320v64H288v-64z m0-128h448v64H288v-64z m0-128h448v64H288v-64z"
              fill="''' +
            getColor(2, color, colors, '#108EE9') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.video_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M512 512m-224 0a224 224 0 1 0 448 0 224 224 0 1 0-448 0Z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
            <path
              d="M472.62 417.206l127.157 81.314c7.445 4.761 9.62 14.655 4.86 22.1a16.003 16.003 0 0 1-4.86 4.86L472.62 606.793c-7.444 4.761-17.339 2.585-22.1-4.86a16 16 0 0 1-2.52-8.62V430.685c0-8.837 7.164-16 16-16a16 16 0 0 1 8.62 2.521z"
              fill="''' +
            getColor(3, color, colors, '#F3F2F0') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.unknown_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M520.688 579.688h-11.531c-0.378-20.812 0.606-36.373 2.953-46.688 2.342-10.31 8.438-24.513 18.281-42.609 9.844-18.092 16.312-32.625 19.406-43.594s4.641-24.513 4.641-40.641c0-24.935-4.878-43.312-14.625-55.125-9.752-11.812-21.283-17.719-34.594-17.719-10.125 0-18.659 2.72-25.594 8.156-5.251 4.126-7.875 8.438-7.875 12.938 0 3.001 1.78 7.69 5.344 14.062 8.06 14.44 12.094 26.719 12.094 36.844 0 9.189-3.142 16.875-9.422 23.062-6.284 6.188-14.111 9.281-23.484 9.281-10.503 0-19.314-3.7-26.438-11.109-7.128-7.405-10.688-17.2-10.688-29.391 0-22.122 9.562-41.528 28.688-58.219 19.125-16.686 45.844-25.031 80.156-25.031 36.373 0 64.076 8.675 83.109 26.016 19.028 17.345 28.547 38.298 28.547 62.859 0 17.815-4.878 34.269-14.625 49.359-9.752 15.095-28.596 31.83-56.531 50.203-18.752 12.375-31.078 23.393-36.984 33.047-5.907 9.661-9.519 24.426-10.828 44.299z m-3.094 41.062c12.56 0 23.247 4.408 32.062 13.219 8.811 8.815 13.219 19.503 13.219 32.062 0 12.564-4.408 23.3-13.219 32.203-8.815 8.903-19.503 13.359-32.062 13.359-12.564 0-23.251-4.456-32.062-13.359-8.815-8.903-13.219-19.639-13.219-32.203 0-12.56 4.403-23.247 13.219-32.062 8.81-8.811 19.498-13.219 32.062-13.219z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.txt_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M683.375 322.625v103.219H673.25c-6.003-23.81-12.656-40.922-19.969-51.328s-17.346-18.703-30.094-24.891c-7.128-3.375-19.596-5.062-37.406-5.062h-28.406V638.75c0 19.503 1.076 31.689 3.234 36.562 2.153 4.878 6.372 9.141 12.656 12.797 6.279 3.656 14.857 5.484 25.734 5.484h12.656V704H411.969v-10.406h12.656c11.061 0 19.969-1.969 26.719-5.906 4.874-2.623 8.719-7.123 11.531-13.5 2.061-4.5 3.094-16.312 3.094-35.438V344.562h-27.562c-25.69 0-44.345 5.44-55.969 16.312-16.312 15.188-26.626 36.844-30.938 64.969h-10.688V322.625h342.563z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.ppt_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M512 290.655A193.29 193.29 0 0 1 544 288c106.039 0 192 85.961 192 192a193.29 193.29 0 0 1-2.655 32H512V290.655zM480 352v192h192c0 106.039-85.961 192-192 192s-192-85.961-192-192 85.961-192 192-192z"
              fill="''' +
            getColor(2, color, colors, '#F37E1E') +
            '''"
            />
          </svg>
        ''';
        break;
      case IconNames.picture_color:
        svgXml = '''
          <svg viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M193 63.191h640c35.346 0 64 28.654 64 64v768c0 35.346-28.654 64-64 64H193c-35.346 0-64-28.654-64-64v-768c0-35.346 28.654-64 64-64z"
              fill="''' +
            getColor(0, color, colors, '#DBDAD8') +
            '''"
            />
            <path
              d="M192.875 62.294h640c35.346 0 64 27.694 64 61.857v742.286c0 34.163-28.654 61.857-64 61.857h-640c-35.346 0-64-27.694-64-61.857V124.152c0-34.163 28.654-61.858 64-61.858z"
              fill="''' +
            getColor(1, color, colors, '#F3F2F0') +
            '''"
            />
            <path
              d="M656 448c-44.183 0-80-35.817-80-80s35.817-80 80-80 80 35.817 80 80-35.817 80-80 80z m-92.235 197.647l63.435-84.581c5.302-7.069 15.331-8.502 22.4-3.2 1.213 0.91 2.29 1.987 3.2 3.2l112 149.333c5.302 7.069 3.869 17.098-3.2 22.4a16.002 16.002 0 0 1-9.6 3.2H269.896c-8.837 0-16-7.163-16-16a16 16 0 0 1 2.687-8.875l162.104-243.155c4.902-7.353 14.836-9.339 22.188-4.438a16 16 0 0 1 4.438 4.438l118.452 177.678z"
              fill="''' +
            getColor(2, color, colors, '#707172') +
            '''"
            />
          </svg>
        ''';
        break;
    }

    return SvgPicture.string(svgXml, width: this.size, height: this.size);
  }
}
