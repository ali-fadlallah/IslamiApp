import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/tabs/settings_tab/Language/LanguageBottomSheetWidget.dart';
import 'package:islami/tabs/settings_tab/Theme/ThemeBottomSheetWidget.dart';
import 'package:provider/provider.dart';

import '../../provider/SettingsProvider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              // color: Colors.white,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 1),
              ),
              child: Text(settingProvider.getSelectedLocal()),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              // color: Colors.white,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 1),
              ),
              child: Text(settingProvider.selectedTheme == ThemeMode.light
                  ? AppLocalizations.of(context)!.light
                  : AppLocalizations.of(context)!.dark),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheetWidget(),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheetWidget(),
    );
  }
}
