import 'package:personality_test/main.dart';
import 'package:flutter/material.dart';
import 'package:personality_test/screen/result_screen.dart';
import 'package:personality_test/screen/start_screen.dart';
import 'package:personality_test/screen/question_screen.dart';
import 'package:personality_test/data/questions.dart';


class PersonalityTest extends StatefulWidget{
  const PersonalityTest({super.key});

  @override
  State<StatefulWidget> createState() {
   return _PersonalityTestState();
   }
}
 
 class _PersonalityTestState extends State<PersonalityTest>{
  int questionIndex=0;
  String activeScreenName='start-screen';

  final Map<PersonalityType,int> emoji={
    PersonalityType.Thinker: 0,
    PersonalityType.Feeler: 0,
    PersonalityType.Planer: 0,
    PersonalityType.Adventurer: 0,
  };

  void switchScreen(){
    setState(() {
      activeScreenName='question-screen';
    });
  }

  void chooseAnswer(PersonalityType type){
    emoji[type]=emoji[type]!+1;
    setState(() {
      questionIndex++;
      if(questionIndex>= questions.length){
        activeScreenName= 'result-screen';
      }
    });
  }

  void restartScreen(){
    setState(() {
      questionIndex=0;
      activeScreenName='start-screen';
      emoji.updateAll((key,value)=>0);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? start;
  if(activeScreenName == 'start-screen'){
    start=StartScreen(
       start: (){
      setState(() {
        activeScreenName = 'question-screen';
      });
    });
  }
  else if(activeScreenName=='question-screen'){
    start=QuestionScreen(
        question: questions[questionIndex],
        selectAnswer: chooseAnswer,);
      }
  else{
    final result= emoji.entries.reduce((a,b)=> a.value > b.value ? a : b).key;
    start = ResultScreen(type: result, restart: restartScreen);
  }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 110, 88, 200),
              Color.fromARGB(255, 150, 150, 240),
              Color.fromARGB(255, 22, 125, 234),
            ],
          )
        ),
        child: start,
      ),
    );
  }
 }
