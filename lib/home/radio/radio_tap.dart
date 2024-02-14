import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/providers/app_config_procider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Image.asset("assets/images/radio_logo.png"),
        ),
        Text(
          AppLocalizations.of(context)!.radio_alquran_alkarem,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(provider.isThemeDarkMode()
                ? "assets/images/Icon metro-next_left_dark.png"
                : "assets/images/Icon metro-next_left.png"),
            Image.asset(provider.isThemeDarkMode()
                ? "assets/images/Icon awesome-play_dark.png"
                : "assets/images/Icon awesome-play.png"),
            Image.asset(provider.isThemeDarkMode()
                ? "assets/images/Icon metro-next_right_dark.png"
                : "assets/images/Icon metro-next_right.png"),
          ],
        )
      ],
    );
  }
}
