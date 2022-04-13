import 'package:flutter/material.dart';

class Node {
  static int typeOrgan = 1;
  static int typeMember = 2;
  static Node? currentSelectedNode;

  bool expand;
  bool selected;
  bool hasChild;
  int depth;
  int type;
  int nodeId;
  int fatherId;
  Map<String, dynamic> object;

  Node(
    this.expand,
    this.selected,
    this.depth,
    this.type,
    this.nodeId,
    this.fatherId,
    this.object, {
    this.hasChild = false,
  });
}

class MyTree extends StatefulWidget {
  const MyTree({
    Key? key,
    required this.organs,
    required this.organKey,
    required this.memberKey,
    required this.organNameKey,
    required this.memberNameKey,
    required this.childrenKey,
  }) : super(key: key);

  final List organs; // 需要处理的对象数组
  /// 组织树下面有组织 也有成员
  /// 子组织需要支持展开
  /// 成员不能展开 展示为成员icon
  final String organKey; // 组织的key
  final String memberKey; // 成员的key
  final String organNameKey; // 组织名字的key
  final String memberNameKey; // 成员名字的key
  final String childrenKey; // 子组织的key

  @override
  State<MyTree> createState() => _MyTreeState();
}

class _MyTreeState extends State<MyTree> {
  ///保存处理后的所有数据的List
  List<Node> list = [];

  ///第一个节点的index
  int nodeId = 1;

  @override
  void initState() {
    super.initState();
    _parseOrgans(widget.organs);
    setState(() {});
  }

  ///如果解析的数据是一个list列表，采用这个方法
  void _parseOrgans(List organs) {
    for (var organ in organs) {
      _parseOrgan(organ);
    }
  }

  ///递归解析原始数据，将organ递归，记录其深度，nodeID和fatherID，将根节点的fatherID置为-1，
  void _parseOrgan(organ,
      {int depth = 0, int fatherId = -1, insertIndex = -1}) {
    // 当前node的id 作为成员的父id
    int currentId = nodeId;
    // 将当前的组织 构造出Node实例 添加进List
    Node currentNode = Node(
      false,
      false,
      depth,
      Node.typeOrgan,
      nodeId++,
      fatherId,
      organ,
    );
    if (insertIndex != -1) {
      // 如果有插入位置的索引 则在指定位置插入node 并递增 因为可能是同次for循环触发的_parseOrgan
      list.insert(insertIndex, currentNode);
      insertIndex = insertIndex + 1;
    } else {
      list.add(currentNode);
    }

    List<Node> members = [];
    if (organ[widget.memberKey] != null) {
      for (var member in organ[widget.memberKey]) {
        members.add(Node(
          false,
          false,
          depth + 1,
          Node.typeMember,
          nodeId++,
          currentId,
          member,
        ));
      }
    }
    if (insertIndex != -1) {
      list.insertAll(insertIndex, members);
      insertIndex = insertIndex + members.length;
      insertIndex++;
    } else {
      list.addAll(members);
    }

    // 递归子组织 做成懒加载 点击某个组织节点时 追加children
    if (organ[widget.childrenKey] != null &&
        organ[widget.childrenKey].isNotEmpty) {
      currentNode.hasChild = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(6.0),
      itemCount: list.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            _mySelectableListTile(
              list[i],
            ),
            const Divider(),
          ],
        );
      },
      scrollDirection: Axis.vertical,
    );
  }

  Color _nodeColorDecision(node) {
    return node.nodeId == Node.currentSelectedNode?.nodeId
        ? Colors.red
        : Colors.black;
  }

  Widget _mySelectableListTile(Node node) {
    Widget tileWidget = Row(
      children: [
        node.hasChild
            ? Icon(
                node.expand ? Icons.arrow_drop_down : Icons.arrow_right,
                size: 20,
                color: _nodeColorDecision(node),
              )
            : (node.type == Node.typeOrgan
                ? const Padding(
                    padding: EdgeInsets.only(left: 20),
                  )
                : Icon(
                    Icons.person,
                    size: 20,
                    color: _nodeColorDecision(node),
                  )),
        Text(
          node.type == Node.typeOrgan
              ? node.object[widget.organNameKey] ?? ''
              : node.object[widget.memberNameKey] ?? '',
          style: TextStyle(
            fontSize: 18,
            textBaseline: TextBaseline.ideographic,
            color: _nodeColorDecision(node),
          ),
        ),
      ],
    );
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(left: node.depth * 15),
        child: tileWidget,
      ),
      onTap: () {
        Node.currentSelectedNode = node;
        if (node.hasChild) {
          if (node.expand) {
            //之前是扩展状态，收起列表
            node.expand = false;
            _expandLess(node);
          } else {
            //之前是收起状态，扩展列表
            node.expand = true;
            _expandMore(node);
          }
        }
        setState(() {});
      },
    );
  }

  void _expandMore(Node node) {
    int index = list.indexWhere((item) => item.nodeId == node.nodeId) + 1;
    for (var organ in node.object[widget.childrenKey]) {
      _parseOrgan(
        organ,
        depth: node.depth + 1,
        fatherId: node.nodeId,
        insertIndex: index,
      );
      index++;
    }
  }

  void _expandLess(Node node) {
    List<Node>? currentNodeChildrens = _findDescendantNodes(node);
    if (currentNodeChildrens != null && currentNodeChildrens.isNotEmpty) {
      for (var child in currentNodeChildrens) {
        list.removeWhere((item) => item.nodeId == child.nodeId);
      }
    }
  }

  List<Node>? _findDescendantNodes(Node node) {
    List<Node>? sons =
        list.where((item) => item.fatherId == node.nodeId).toList();
    if (sons.isNotEmpty) {
      for (var son in sons) {
        sons.addAll(list.where((item) => item.fatherId == son.nodeId));
      }
    }
    return sons;
  }
}
