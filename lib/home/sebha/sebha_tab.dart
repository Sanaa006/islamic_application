import 'package:flutter/material.dart';
import 'package:islami_application/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  String numberOfTaspeh = "0";
  double turns = 0.0;
  List<String> tsapeh = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int index = 0;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/head_of_sebhaa.png",
                    fit: BoxFit.cover),
                height: 90,
              ),
              Transform.rotate(
                angle: turns,
                child: InkWell(
                    child: Image.asset("assets/images/sebha_image.png"),
                    onTap: () {
                      incrimntCounter();
                      setState(() {
                        turns += 0.2;
                      });
                    }),
              ),
            ],
          ),
        ),
        Text(
          "Numbet of AlTaspihat",
          style: Theme
              .of(context)
              .textTheme
              .titleSmall,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme
                  .of(context)
                  .primaryColor
                  .withOpacity(0.5)),
          child: Text(numberOfTaspeh,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme
                  .of(context)
                  .primaryColor),
          child: Text(tsapeh[index],
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: MyTheme.whiteColor)),
        )
      ],
    );
  }

  int counter = 0;

  incrimntCounter() {
    ++counter;
    if (counter > 30) {
      counter = 0;
      ++index;
      if (index > 2) {
        index = 0;
      }
    }
    numberOfTaspeh = counter.toString();
  }
}
