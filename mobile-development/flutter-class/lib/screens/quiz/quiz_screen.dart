import 'package:flutter/material.dart';
import 'package:flutter_class/screens/quiz/components/question_answer.dart';
import 'package:flutter_class/screens/quiz/components/question_button.dart';
import 'package:flutter_class/screens/quiz/model/question_model.dart';
import 'package:flutter_class/screens/quiz_finished.dart';


class QuizScreen extends StatefulWidget {
  static const String id = 'quiz';

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> questions = [];
  int questionIndex = 0;
  int score = 0;

  @override
  void initState(){
    super.initState();
    questions = loadQuestion();
  }

  List<QuestionModel> loadQuestion(){
    return [
      QuestionModel(question: "Qual é o país que mais produz café no mundo?", options: ["Canadá", "India", "Argentina", "Brazil", "Etiópia"], answer: 3)
    ];
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestion.question),
              const SizedBox(height: 32),
              ListView.separated(
                itemCount: currentQuestion.options.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                  const SizedBox(height: 10),
                itemBuilder: (context, index){
                  return QuestionButton(
                      text: currentQuestion.options[index],
                      onPressed: (){
                        onOptionPressed(index);
                      },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void onOptionPressed(int selectedOption){
    final currentQuestion = questions[questionIndex];

    if(selectedOption == currentQuestion.answer){
      score++;
    }

    goToNextQuestion();
  }

  void goToNextQuestion(){
    if(questionIndex == questions.length-1){
      Navigator.pushReplacementNamed(
          context,
          FinishedQuizScreen.id,
          arguments: QuizFinishedArguments(score: score,
          ),
      );
    }else{
      setState((){
        questionIndex++;
      });
    }
  }

  // void onSelectedAnswer(int index){
  //   final currentQuestion = questions[questionIndex];
  //   if(currentQuestion.correctAnswerIndex == index){
  //     score ++;
  //   }
  //
  // }
}