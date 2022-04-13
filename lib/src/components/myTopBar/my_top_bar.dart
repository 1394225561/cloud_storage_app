import 'package:flutter/material.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({
    Key? key,
    this.leadingWidget,
    required this.title,
    this.actionsWidget,
  }) : super(key: key);

  final Widget title;
  final Widget? leadingWidget;
  final List<Widget>? actionsWidget;

  @override
  State<MyTopBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyTopBar> {
  late Widget appBarTitle;
  late Widget? appBarLeadingWidget;
  late List<Widget>? appBarActionsWidget;

  @override
  void initState() {
    super.initState();
    appBarTitle = widget.title;
    appBarLeadingWidget = widget.leadingWidget;
    appBarActionsWidget = widget.actionsWidget;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: appBarLeadingWidget,
      leadingWidth: 80,
      title: appBarTitle,
      actions: appBarActionsWidget,
      centerTitle: true,
    );
  }
}
