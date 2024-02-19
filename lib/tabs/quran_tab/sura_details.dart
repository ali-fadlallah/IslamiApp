import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/tabs/quran_tab/SuraModel.dart';
import 'package:islami/tabs/quran_tab/suraItem.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraList = [];

  @override
  Widget build(BuildContext context) {
    SuraModel arg = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (suraList.isEmpty) {
      loadSura(arg.number);
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/main_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${arg.name}',
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: suraList.isEmpty
              ? CircularProgressIndicator()
              : Card(
                  margin: EdgeInsets.all(20),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return SuraItem(suraText: suraList[index]);
                      },
                      itemCount: suraList.length),
                ),
        ),
      ),
    );
  }

  void loadSura(int index) async {
    String sura =
        await rootBundle.loadString('assets/files/quran_files/${index}.txt');

    List<String> list = sura.trim().split('\n');

    setState(() {
      suraList = list;
    });
  }
}
