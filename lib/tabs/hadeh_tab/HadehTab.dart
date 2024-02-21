import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/tabs/hadeh_tab/HadehWidget.dart';
import 'package:islami/tabs/hadeh_tab/HadethModel.dart';

class HadehTab extends StatefulWidget {
  @override
  State<HadehTab> createState() => _HadehTabState();
}

class _HadehTabState extends State<HadehTab> {
  List<HadehModel> allHadehList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadehList.isEmpty) {
      loadHadeh();
    }
    return Container(
        child: Column(
      children: [
        Image.asset(
          'assets/images/hadeh_logo.png',
          width: 250,
        ),
        Container(
          height: 3,
          margin: EdgeInsets.only(top: 10),
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text('Hadeh', style: Theme.of(context).textTheme.titleLarge),
        Container(
          height: 3,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                height: 2,
                color: Theme.of(context).colorScheme.secondary,
                margin: EdgeInsets.symmetric(horizontal: 50),
              );
            },
            itemCount: allHadehList.length,
            itemBuilder: (context, index) {
              return HadehWidget(
                  HadehName: allHadehList[index].title,
                  HadehContent: allHadehList[index].content);
            },
          ),
        )
      ],
    ));
  }

  void loadHadeh() async {
    String fileContent =
        await rootBundle.loadString('assets/files/hadeh/ahadeth.txt');

    List<String> allHadeh = fileContent.trim().split('#');

    for (int i = 0; i < allHadeh.length; i++) {
      String signeHadeh = allHadeh[i].trim();

      String title = signeHadeh.substring(0, signeHadeh.indexOf('\n'));

      String content = signeHadeh.substring(signeHadeh.indexOf('\n') + 1);

      allHadehList.add(HadehModel(content: content, title: title));
    }
    setState(() {});
  }
}
