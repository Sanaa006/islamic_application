import 'package:flutter/material.dart';
import 'package:islami_application/home/hadeth/hadeth_tab.dart';
import 'package:islami_application/home/hadeth/item_hadeth_detials_name.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/providers/app_config_procider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "HadethDetailsSecreen";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Ahadeth;
    return Stack(children: [
      provider.isThemeDarkMode()
          ? Image.asset(
              "assets/images/main_backgroun_dark.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              "assets/images/main_background.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.title}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.06,
            vertical: MediaQuery
                .of(context)
                .size
                .height * 0.06,
          ),
          decoration: BoxDecoration(
            color: provider.isThemeDarkMode()
                ? Theme.of(context).primaryColor
                : MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetailsName(contant: args.contantHadeth[index]);
            },
            itemCount: args.contantHadeth.length,
          ),
        ),
      )
    ]);
  }
}


