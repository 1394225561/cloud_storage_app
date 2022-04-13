import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          AppBar(
            title: Text(
              'Example title',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                '404!',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
