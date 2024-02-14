import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/home/settings/Theme_bottom_sheet.dart';
import 'package:islami_application/home/settings/language_bottom_sheet.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/providers/app_config_procider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
              showLangaugeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == "en"
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 20),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 30,
                    color: provider.isThemeDarkMode()
                        ? Theme.of(context).primaryColorDark
                        : MyTheme.blackColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () {
              showthemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appTheme == ThemeMode.dark
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 20),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 30,
                    color: provider.isThemeDarkMode()
                        ? Theme.of(context).primaryColorDark
                        : MyTheme.blackColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLangaugeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Langaugebottomsheet();
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))));
  }

  void showthemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Themebottomsheet();
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))));
  }
}
