import 'package:flutter/material.dart';


class ItemSutaDetailsName extends StatelessWidget {
  String lineSura;
  int index;

  ItemSutaDetailsName({required this.lineSura, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$lineSura {${index + 1}}",
      style: Theme
          .of(context)
          .textTheme
          .titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
