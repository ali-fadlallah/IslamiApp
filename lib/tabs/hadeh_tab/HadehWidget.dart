import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeh_tab/HadethModel.dart';
import 'package:islami/tabs/hadeh_tab/hadeh_details.dart';

class HadehWidget extends StatelessWidget {
  String HadehName;
  String HadehContent;

  HadehWidget({required this.HadehName, required this.HadehContent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadehDetails.routeName,
          arguments: HadehModel(title: HadehName, content: HadehContent),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          textAlign: TextAlign.center,
          HadehName,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 25),
        ),
      ),
    );
  }
}
