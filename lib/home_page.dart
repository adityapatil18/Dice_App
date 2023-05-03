import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber1 = 1;

  int diceNumber2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Dice App',
            style:
                TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'bot'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/dice$diceNumber1.png',
                height: 100,
                width: 100,
                fit: BoxFit.fitHeight,
              ),
              Image.asset(
                'images/dice$diceNumber2.png',
                height: 100,
                width: 100,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
          GestureDetector(
            onTap: () async {
              Random random = Random();

              print('on taped');

              for (int i = 0; i <= 5; i++) {
                await Future.delayed(
                  Duration(milliseconds: 100),
                  () {},
                );
                diceNumber1 = random.nextInt(6) + 1;
                diceNumber2 = random.nextInt(6) + 1;
                setState(() {});
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              child: Text(
                'Lets roll',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'bot'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
