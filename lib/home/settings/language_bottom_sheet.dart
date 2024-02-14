import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/providers/app_config_procider.dart';
import 'package:provider/provider.dart';

class Langaugebottomsheet extends StatefulWidget {
  const Langaugebottomsheet({super.key});

  @override
  State<Langaugebottomsheet> createState() => _LangaugebottomsheetState();
}

class _LangaugebottomsheetState extends State<Langaugebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  //change language to English
                  provider.changeLanguge("en");
                },
                child: provider.appLanguage == "en"
                    ? getSelectedItemWidget(
                        AppLocalizations.of(context)!.english)
                    : getUnselectedItemWidget(
                        AppLocalizations.of(context)!.english)),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  //change Language to Arabic
                  provider.changeLanguge("ar");
                },
                child: provider.appLanguage == "ar"
                    ? getSelectedItemWidget(
                        AppLocalizations.of(context)!.arabic)
                    : getUnselectedItemWidget(
                        AppLocalizations.of(context)!.arabic))
          ],
        ),
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnselectedItemWidget(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 20),
    );
  }
}
