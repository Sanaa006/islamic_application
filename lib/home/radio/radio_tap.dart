import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Image.asset("assets/images/radio_logo.png"),
        ),
        Text("Radio Alquran Alkarem", style: Theme
            .of(context)
            .textTheme
            .titleSmall,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/Icon metro-next_right.png"),
            Image.asset("assets/images/Icon awesome-play.png"),
            Image.asset("assets/images/Icon metro-next_left.png"),
          ],
        )
      ],
    );
  }
}
