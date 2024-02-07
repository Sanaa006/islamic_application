import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/home/quran/item_sura_detials_name.dart';
import 'package:islami_application/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetailsSecreen";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Stack(children: [
      Image.asset(
        "assets/images/main_background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.name}",
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
            child: CircularProgressIndicator(
              color: MyTheme.primaryLight,
            ))
            : Container(
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
            color: MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  thickness: 1,
                ),
            itemBuilder: (context, index) {
              return ItemSutaDetailsName(
                lineSura: verses[index],
                index: index,
              );
            },
            itemCount: verses.length,
          ),
        ),
      )
    ]);
  }

  loadfile(int index) async {
    String contant =
    await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = contant.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
