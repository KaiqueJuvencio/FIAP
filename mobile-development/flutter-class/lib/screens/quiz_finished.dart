import 'package:flutter/material.dart';

class FinishedQuizScreen extends StatelessWidget{
  static const String id = 'finished_quiz';

  const FinishedQuizScreen({Key? key, required this.arguments})
  :super(key: key);

  final QuizFinishedArguments arguments;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parabéns'),
      ),
      body: Center(
        child: Text(
          'Sua pontuação foi de ${arguments.score}',
        ),
      ),
    );
  }
}

class QuizFinishedArguments{
  QuizFinishedArguments({required this.score,});
  int score;
}