import 'package:flutter/material.dart';

class ShowSnackBar {
  static void showInfo(BuildContext context, String info) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(info),
    ));
  }
}
