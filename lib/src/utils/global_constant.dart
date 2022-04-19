class GlobalConstant {
  static int chunkSize = 10485760;
  static dynamic platform;
  static String cookie = '';
  static Map<String, dynamic> userDetails = {};
  static Map<String, dynamic> sysConfig = {};
  static String routerSplitCharacter = '#%@';
  static String permissionBtns = '';

  static const String personal = 'personal';
  static const String share = 'share';
  static const String otherShare = 'otherShare';
  static const String publicSpace = 'publicSpace';
  static const String recycle = 'recycle';
  static const String favorite = 'favorite';
  static const String toAssigned = 'toAssigned';
  static const String linkShare = 'linkShare';
  static const String publicLinkShare = 'publicLinkShare';

  static Map<String, dynamic> files = {
    personal: [],
    share: [],
  };
}
