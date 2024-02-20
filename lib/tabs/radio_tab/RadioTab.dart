import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/img_radio.png'),
          Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/ic_previous.png',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/ic_play.png',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/ic_next.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
