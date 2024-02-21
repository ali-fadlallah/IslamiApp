import 'package:flutter/material.dart';
import 'package:islami/tabs/quran_tab/SuraModel.dart';
import 'package:islami/tabs/quran_tab/sura_details.dart';

class SuraWidget extends StatelessWidget {
  String suraName;
  int suraNumber;

  SuraWidget({required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraModel(name: suraName, number: suraNumber));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          textAlign: TextAlign.center,
          suraName,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
