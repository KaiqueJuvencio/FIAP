import 'package:flutter/material.dart';
import 'package:flutter_class/screens/personal_card_screen.dart';
import 'package:flutter_class/screens/quiz/quiz_screen.dart';
import 'package:flutter_class/screens/random_dice.dart';
import 'package:flutter_class/widget/rounde_button.dart';

class MenuScreen extends StatelessWidget {
  static const String id = 'menu';
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Menu Inicial", style: TextStyle(fontSize: 32),),
              const SizedBox(height: 16,),
              RoundedButton(
                icon: Icons.person,
                text: 'Cartão pessoal',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    PersonalCardScreen.id,
                    arguments: const PersonalCardScreenArguments(image: 'assets/images/bird.png',
                        name: 'Kaique Graton',
                        phone: '11 96142-7575',
                        email: 'kaiquejuvencio@hotmail.com')
                  );
                },
              ),
              const SizedBox(height: 16,),
              RoundedButton(
                icon: Icons.person,
                text: 'Dados Aleatórios',
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      RandomDice.id,
                      arguments: const RandomDiceArguments(image: 'assets/images/dice1.png',
                          name: 'Random Dice',
                          phone: '11 96142-7575',
                          email: 'kaiquejuvencio@hotmail.com')
                  );
                },
              ),
              const SizedBox(height: 16,),
              RoundedButton(
                icon: Icons.person,
                text: 'Quiz',
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      QuizScreen.id,
                  );
                },
              )
            ],
          ),
        ),
      ),

    );
  }
}