import 'package:flutter/material.dart';

class SuraItem extends StatelessWidget {
  String suraText;

  SuraItem({required this.suraText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        suraText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
