import 'package:flutter/material.dart';
import 'package:flutter_class/screens/personal_card_screen.dart';
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