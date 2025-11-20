import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({required this.start,super.key});
   final VoidCallback start;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Discover Your \n Personality Type!', 
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('💖', style: TextStyle(fontSize: 50),),
              SizedBox(width: 20),
              Text('🗺',style: TextStyle(fontSize: 50, color: Colors.green),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('📅',style: TextStyle(fontSize: 50, color: Colors.white),),
              SizedBox(width: 20),
              Text('🧠', style: TextStyle(fontSize: 50,color:  Colors.black),),
            ],
          ),
          SizedBox(height: 20),
          
          ElevatedButton(
            onPressed: start,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
              textStyle: const TextStyle(fontSize: 25, color: Colors.blue),
              ),
              child: const Text('Start Test'),
          ),
        ],
      ),
    );
  }
}