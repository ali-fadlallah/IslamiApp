import 'package:flutter/material.dart';

class HadehItem extends StatelessWidget {
  String hadehContent;

  HadehItem({required this.hadehContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        hadehContent,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
