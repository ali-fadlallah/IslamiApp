import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheetWidget extends StatefulWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  State<ThemeBottomSheetWidget> createState() => _ThemeBottomSheetWidgetState();
}

class _ThemeBottomSheetWidgetState extends State<ThemeBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: settingProvider.selectedTheme == ThemeMode.dark
                ? getSelectedTheme(AppLocalizations.of(context)!.dark)
                : getUnSelectedTheme(AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              settingProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: settingProvider.selectedTheme == ThemeMode.light
                ? getSelectedTheme(AppLocalizations.of(context)!.light)
                : getUnSelectedTheme(AppLocalizations.of(context)!.light),
          ),
        ],
      ),
    );
  }

  Widget getSelectedTheme(String themeName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          themeName,
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.check,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget getUnSelectedTheme(String themeName) {
    return Container(
      width: double.infinity,
      child: Text(
        themeName,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
