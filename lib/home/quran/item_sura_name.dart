import 'package:flutter/material.dart';
import 'package:islami_application/home/quran/sura_details_screen.dart';

class ItemSutaName extends StatelessWidget {
  String name;
  int index;

  ItemSutaName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme
            .of(context)
            .textTheme
            .titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
