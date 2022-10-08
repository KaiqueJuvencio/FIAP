import 'package:flutter/material.dart';
import 'package:flutter_class/screens/menu_screen.dart';
import 'package:flutter_class/screens/personal_card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id : (context) => const MenuScreen(),
        PersonalCardScreen.id : (context) => PersonalCardScreen(
          arguments: ModalRoute.of(context)?.settings.arguments as PersonalCardScreenArguments,
        ),
      },
    );
  }
}