import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeh_tab/HadethModel.dart';
import 'package:islami/tabs/settings_tab/Theme/MyTheme.dart';

class HadehDetails extends StatefulWidget {
  static const String routeName = 'hadeh_details';

  @override
  State<HadehDetails> createState() => _HadehDetailsState();
}

class _HadehDetailsState extends State<HadehDetails> {
  @override
  Widget build(BuildContext context) {
    HadehModel arg = ModalRoute.of(context)?.settings.arguments as HadehModel;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyThemeData.getBackgroundImage()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${arg.title}',
          ),
        ),
        body: Center(
          child: Container(
            child: Card(
              margin: EdgeInsets.all(20),
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.right,
                    '${arg.content}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
