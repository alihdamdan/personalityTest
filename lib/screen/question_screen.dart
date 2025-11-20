import 'package:flutter/material.dart';
import 'package:personality_test/main.dart';
import 'package:personality_test/model/question.dart';

class QuestionScreen extends StatelessWidget{
  const QuestionScreen({super.key,required this.question, required this.selectAnswer});
  final Question question;
  final void Function(PersonalityType) selectAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question.text,
          style: TextStyle(fontSize: 40,color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ...question.answers.map((item){
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width:  double.infinity,
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 193, 183, 187),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 25),
            ),
            onPressed: () => selectAnswer(item.type),
            child: Text(item.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
            ),
            ),
          );
        })
      ],
      )
    );
  }
}
