import 'package:flutter/material.dart';

class ItemHadethDetailsName extends StatelessWidget {
  String contant;

  ItemHadethDetailsName({required this.contant});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$contant",
      style: Theme
          .of(context)
          .textTheme
          .titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
