import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/home/hadeth/item_hadeth_name.dart';
import 'package:islami_application/my_theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Ahadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadFiles();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),
        Text(
          "Hadeth Name",
          style: Theme
              .of(context)
              .textTheme
              .titleMedium,
        ),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),
        ahadethList.isEmpty
            ? Center(
          child: CircularProgressIndicator(color: MyTheme.primaryLight),
        )
            : Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  thickness: 1,
                ),
            itemBuilder: (context, index) {
              return ItemHadethName(hadeth: ahadethList[index]);
            },
            itemCount: ahadethList.length,
          ),
        )
      ],
    );
  }

  loadFiles() async {
    String contentHadeths =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> Hadeths = contentHadeths.split("#\r\n");
    for (int i = 0; i < Hadeths.length; i++) {
      List<String> hadethLines = Hadeths[i].split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Ahadeth hadeth = Ahadeth(title: title, contantHadeth: hadethLines);
      ahadethList.add(hadeth);
      setState(() {

      });
    }
    // String hadethContant=
  }
}

class Ahadeth {
  String title;
  List<String> contantHadeth;

  Ahadeth({required this.title, required this.contantHadeth});
}
