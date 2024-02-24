import 'package:flutter/material.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheetWidget extends StatefulWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  State<LanguageBottomSheetWidget> createState() =>
      _LanguageBottomSheetWidgetState();
}

class _LanguageBottomSheetWidgetState extends State<LanguageBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    var lang = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              lang.changeLanguage('en');
              Navigator.pop(context);
            },
            child: lang.selectedLocale == 'en'
                ? getSelectedLanguage('English')
                : getUnSelectedLanguage('English'),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              lang.changeLanguage('ar');
              Navigator.pop(context);
            },
            child: lang.selectedLocale == 'ar'
                ? getSelectedLanguage('العربية ')
                : getUnSelectedLanguage('العربية'),
          ),
        ],
      ),
    );
  }

  Widget getSelectedLanguage(String langName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(langName),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Widget getUnSelectedLanguage(String langName) {
    return Container(
      width: double.infinity,
      child: Text(
        langName,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
