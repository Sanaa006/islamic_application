import 'package:flutter/material.dart';
import 'package:islami_application/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_application/home/hadeth/hadeth_tab.dart';


class ItemHadethName extends StatelessWidget {
  Ahadeth hadeth;


  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
            context, HadethDetails.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme
            .of(context)
            .textTheme
            .titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
