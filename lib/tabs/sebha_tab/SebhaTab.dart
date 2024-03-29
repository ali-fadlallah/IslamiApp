import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibration/vibration.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbeh = 0;
  String TextOfTasbeh = '';
  bool tasbehVisiable = false;
  int counter = 0;
  int index = 0;

  List<String> listOfAzkar = [];

  @override
  Widget build(BuildContext context) {
    listOfAzkar = [
      AppLocalizations.of(context)!.sohabALlah,
      AppLocalizations.of(context)!.alhamdelallah,
      AppLocalizations.of(context)!.allahAkbar,
      'الحمد لله',
      'الله اكبر'
    ];
    if (index > listOfAzkar.length - 1) {
      index = 0;
    }
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        startSebha();
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 70),
                      child: RotatedBox(
                        quarterTurns: numberOfTasbeh,
                        child: Image.asset(
                          "assets/images/bodyofseb7a.png",
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Image(
                      image: AssetImage('assets/images/headofseb7a.png'),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            AppLocalizations.of(context)!.tasbeh_number,
            style: Theme.of(context).textTheme.titleLarge),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Visibility(
            visible: tasbehVisiable,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Text(
                listOfAzkar[index],
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ],
      ),
    );
  }

  void startSebha() {
    Vibration.vibrate(duration: 100);

    tasbehVisiable = true;

    setState(() {
      numberOfTasbeh++;
      if (counter >= 33) {
        counter = 0;
        index++;
      }
      counter++;
    });
  }
}
