import 'package:personality_test/main.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({required this.type, required this.restart,super.key});

  final PersonalityType type;
  final VoidCallback restart;

  static const Map<PersonalityType, String> result={
    PersonalityType.Feeler: "You are a Feeler \n 💖 \n Empathetic, warm, and \n guided by emotion.",
    PersonalityType.Thinker: "You are a Thinker \n 🧠 \n Logical, curious, and \n focused on ideas.",
    PersonalityType.Planer: "You are a Planner \n 📅 \n Organized, strategic, and \n goal-oriented.",
    PersonalityType.Adventurer: "You are an Adventurer \n 🗺 \n Spontaneous, bold, and \n always exploring.",
  };

  @override
  Widget build(BuildContext context) {
    final message=result[type]!;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(fontSize: 50,color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Column(
            children: [
              ElevatedButton(
                onPressed: restart, 
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Restart Quize', 
                  style: TextStyle(fontSize: 25,color: Colors.blue),
                  ),
                  ),
            ],
          )
        ],
      ),
      );
  }
}