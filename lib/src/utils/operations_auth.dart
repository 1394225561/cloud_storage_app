import 'operations_static.dart';
import '/src/utils/tools.dart';

class OperationsAuth {
  // 文件是否可以进行收藏或者取消收藏操作
// 个人文件肯定可以收藏
// 共享文件需要判断权限
  static bool judgeFileCanFavorite(
      String bizType, Map<String, dynamic> bizData, bool isRootPath) {
    if (bizType == 'personal') {
      return true;
    }

    List permissions = getSingleOptions(bizType, bizData, isRootPath);
    return permissions.any((item) => item['event'] == 'favorite');
  }

// 读一读，和预览一样，不需要权限判断
  static bool judgeFileCanRead(String operationType) =>
      operationType == 'readFile';

// 共享文件
// 根目录不能上传，
// 根目录可以新建文件夹
// 顶部栏目的permissType需要取当前目前的父级，譬如在根目录，父级权限permissionType肯定是空，那么取全量权限的集合，相当于permissType=4
// 当处于第二级目录时，那么permissionType取shareParent的permissionType
  static judgeShareFileTopBarPermission(
      int permissionType, String operationType, bool isRootPath) {
    late List permissions;
    switch (permissionType) {
      case 4:
      case 5:
        if (isRootPath) {
          permissions = [Operations.permissionNewFolder];
        } else {
          permissions = [
            Operations.permissionNewFolder,
            Operations.permissionUpload
          ];
        }
        break;
      case 3:
      case 2:
        if (!isRootPath) {
          permissions = [Operations.permissionUpload];
        } else {
          permissions = [];
        }
        break;
      case 6:
      case 1:
        permissions = [];
    }
    return permissions.any((item) => item['event'] == operationType);
  }

// 通过权限 过滤 单文件操作集合
  static List filterOptions(List originalOptions) {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String permissionBtnString = prefs.getString('permissionBtns') ?? '';
    String permissionBtnString = Tools.permissionBtns;
    List permissionBtn = permissionBtnString.split(Tools.routerSplitCharacter);
    originalOptions.retainWhere(
        (item) => item['code'] == null || permissionBtn.contains(item['code']));
    return originalOptions;
  }

  static List getSingleOptions(
      String bizType, Map<String, dynamic> bizData, bool isRootpath) {
    List originalOptions =
        getOriginalSingleOptions(bizType, bizData, isRootpath);
    List filteredOptions = filterOptions(originalOptions);
    return filteredOptions;
  }

  static List getOriginalSingleOptions(
    String bizType,
    Map<String, dynamic> bizData,
    bool isRootPath,
  ) {
    const fileTypeList = [
      'txt',
      'doc',
      'docx',
      'xlsx',
      'xls',
      'wps',
      'wpt',
      'pptx',
      'ppt'
    ];
    int point = bizData['fileName'].lastIndexOf('.');
    String type = bizData['fileName'].substring(point + 1).toLowerCase();
    List concatArray = [];
    if (fileTypeList.contains(type)) {
      concatArray.add(Operations.onlineEdit);
    }
    switch (bizType) {
      // 个人文件
      case 'personal':
        if (bizData['isDir'] == 1) {
          // return [a, c, b, d, e, g, P, Q, f]
          return [
            Operations.share,
            Operations.delete,
            Operations.download,
            Operations.move,
            Operations.copy,
            Operations.setShare,
            Operations.move2public,
            Operations.copy2public,
            Operations.rename,
          ];
        } else {
          if (bizData['isLock'] == 1) {
            concatArray.addAll([
              Operations.unshareable,
              Operations.delete,
              Operations.download,
              Operations.move,
              Operations.copy,
              Operations.move2public,
              Operations.copy2public,
              Operations.lookLast
            ]);
          } else {
            concatArray.addAll([
              Operations.share,
              Operations.delete,
              Operations.download,
              Operations.move,
              Operations.copy,
              Operations.move2public,
              Operations.copy2public,
              Operations.rename,
              Operations.lookLast
            ]);
          }
          return concatArray;
        }
      // 交换区
      case 'publicSpace':
        if (bizData['isDir'] == 1) {
          // if (networkEnv === 'FUJIAN') {
          //   return [b, c, f, P, Q]
          // } else {
          //   return [b, c, d, e, f]
          // }
          return [
            Operations.download,
            Operations.delete,
            Operations.move,
            Operations.copy,
            Operations.rename,
          ];
        } else {
          if (bizData['isLock'] == 1) {
            return [
              Operations.download,
              Operations.delete,
              Operations.rename,
              Operations.lookLast,
            ];
          } else {
            // if (networkEnv === 'FUJIAN') {
            //   return [b, c, f, J, P, Q]
            // } else {
            //   return [b, c, d, e, f, J]
            // }
            return [
              Operations.download,
              Operations.delete,
              Operations.move,
              Operations.copy,
              Operations.rename,
              Operations.lookLast,
            ];
          }
        }
      // 我的收藏
      case 'favorite':
        if (bizData['isLock'] == 1) {
          if (bizData['isOwner'] == 1) {
            return [Operations.unshareable];
          }
          return [Operations.unshareable];
        }
        return [Operations.share];
      // 他人分享
      // 根目录才可以删除
      // 能下载就可以复制到，两者并存
      // shareStatus, "" 代表永久有效， -1代表已经被删除，-2代表已经失效
      // isLock时，只能删除
      // downloadAble 代表可以下载
      // shareAble 代表可以再分享
      // 已经被删除的，什么操作都没有，
      case 'otherShare':
        List ops = [];
        if (isRootPath) {
          ops = [Operations.delete];
        }
        if (bizData['isLock'] == 1) {
          return ops;
        }
        if (bizData['shareAble'] == 1 && bizData['fileId'] != null) {
          ops.add(Operations.shareAgain);
        }
        if (bizData['shareAble'] == 0 || bizData['fileId'] == null) {
          ops.add(Operations.unshareable);
        }
        if (bizData['downloadAble'] == 1) {
          ops.addAll([
            Operations.download,
            Operations.copy,
          ]);
        }
        return ops;
      // 回收站
      case 'recycle':
        return [
          Operations.delete,
          Operations.restore,
        ];
      // 发送同事分享
      case 'toAssigned':
        return [Operations.shareCancel];
      case 'linkShare':
        return [Operations.copyLink, Operations.shareCancel];
      case 'publicLinkShare':
        return [Operations.copyLink, Operations.shareCancel];
      // 共享文件
      case 'share':
        if (bizData['isLock'] != 1) {
          if (bizData['pid'] == 'rootpath') {
            switch (bizData['permissionType']) {
              case 4:
              case 5:
                // 根目录，并且是文件夹，才能设置共享成员
                if (bizData['isDir'] == 1) {
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.delete,
                    Operations.rename,
                    Operations.settingShared,
                    Operations.permissionFavorite
                  ];
                } else {
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.delete,
                    Operations.rename,
                    Operations.permissionFavorite
                  ];
                }
              case 3:
              case 6:
                return [
                  Operations.share,
                  Operations.download,
                  Operations.permissionFavorite
                ];
              case 1:
              case 2:
                return [];
              default:
                return [];
            }
          } else {
            if (bizData['isDir'] == 1) {
              switch (bizData['permissionType']) {
                case 4:
                case 5:
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.delete,
                    Operations.rename,
                    Operations.move,
                    Operations.copy,
                    Operations.permissionFavorite
                  ];
                case 3:
                case 6:
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.copy,
                    Operations.permissionFavorite
                  ];
                case 1:
                case 2:
                  return [];
                default:
                  return [];
              }
            } else {
              switch (bizData['permissionType']) {
                case 4:
                case 5:
                  concatArray.addAll([
                    Operations.share,
                    Operations.delete,
                    Operations.download,
                    Operations.rename,
                    Operations.move,
                    Operations.copy,
                    Operations.lookLast,
                    Operations.permissionFavorite
                  ]);
                  return concatArray;
                case 3:
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.copy,
                    Operations.lookLast,
                    Operations.permissionFavorite
                  ];
                case 6:
                  return [
                    Operations.share,
                    Operations.download,
                    Operations.copy,
                    Operations.permissionFavorite
                  ];
                case 1:
                case 2:
                  return [];
                default:
                  return [];
              }
            }
          }
        } else {
          switch (bizData['permissionType']) {
            // 加锁文件，只有自己才有权限操作，除了分享操作。
            case 4:
              concatArray.addAll([
                Operations.unshareable,
                Operations.delete,
                Operations.download,
                Operations.rename,
                Operations.move,
                Operations.copy,
                Operations.lookLast,
                Operations.permissionFavorite
              ]);
              return concatArray;
            case 5:
            case 6:
            case 2:
            case 3:
            case 1:
              return [];
            default:
              return [];
          }
        }
      default:
        return [];
    }
  }

  // static judgeShareFileOperationPermission  (Map<String,dynamic> bizData,String operationType)  {
  //   const permissions = getSingleOptions('share', bizData)
  //   return !_.isEmpty(_.filter(permissions, item => item.event === operationType)) || judgeFileCanRead(operationType)
  // }

  static List getFullMultiOptions(
    String bizType,
    List bizDatas,
    bool isRootPath,
  ) {
    List options = [];
    for (int i = 0; i < bizDatas.length; i++) {
      List singleOptions = getSingleOptions(bizType, bizDatas[i], isRootPath);
      if (options.isEmpty) {
        options = singleOptions;
      } else {
        var optionsSet = Set.from(options);
        var singleOptionsSet = Set.from(singleOptions);
        List intersectionSet =
            singleOptionsSet.intersection(optionsSet).toList();
        options = intersectionSet;
        if (options.isEmpty) {
          break;
        }
      }
    }
    List removeArray = [
      'rename',
      'uploaderNew',
      'lookLast',
      'setShare',
      'edit'
    ];
    options = options.where((item) {
      return !removeArray.contains(item['event']);
    }).toList();
    return options;
  }
}
