import 'dart:math';

import 'package:flutter/material.dart';

class RandomDice extends StatefulWidget {
  static const String id = 'random_dice_card';

  const RandomDice({Key? key, required this.arguments}) : super(key: key);
  final RandomDiceArguments arguments;

  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {
  int dice1 = 3;
  int dice2 = 4;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                // flex: 2, vc da peso
                  child: InkWell(
                    onTap: (){
                      dice1 = Random().nextInt(6) +1;
                      print("Dice1 $dice1");
                      setState((){});
                    },
                    child: Image.asset('assets/images/dice$dice1.png'),
                  ) ),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      dice2 = Random().nextInt(6) +1;
                      print("Dice2 $dice2");
                      setState((){});
                    },
                    child: Image.asset('assets/images/dice$dice2.png'),
                  ) )
            ],
          ),
        ),
      ),
    );
  }
}

class RandomDiceArguments {
  const RandomDiceArguments({
    required this.image,
    required this.name,
    required this.phone,
    required this.email,
  });

  final String image;
  final String name;
  final String phone;
  final String email;
}
