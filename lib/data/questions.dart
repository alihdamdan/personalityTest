
import 'package:personality_test/main.dart';
import 'package:personality_test/model/answer.dart';
import 'package:personality_test/model/question.dart';

const questions=[
  Question("How do you approach a difficult decision?",[
    Answer('Analyze all options logically', PersonalityType.Thinker),
    Answer('Go with what feels right emotionally', PersonalityType.Feeler),
    Answer('Make a checklist and plan it out', PersonalityType.Planer),
    Answer('Take a leap and deal with results later', PersonalityType.Adventurer),
  ]),
  
  Question("What excites you the most?",[
    Answer('Solving complex problems', PersonalityType.Thinker),
    Answer('Connecting deeply with others', PersonalityType.Feeler),
    Answer('Creating a clear path to your goals', PersonalityType.Planer),
    Answer('Exploring something new', PersonalityType.Adventurer),
  ]),
  
  
  Question("Which best describes your work style?",[
    Answer(' Detail-focused and logical', PersonalityType.Thinker),
    Answer('People-centered and intuitive', PersonalityType.Feeler),
    Answer('Organized and systematic', PersonalityType.Planer),
    Answer('Flexible and spontaneous', PersonalityType.Adventurer),
  ]),
  

  Question("How do you recharge after a long day?",[
    Answer('Quiet reflection or reading', PersonalityType.Thinker),
    Answer('Spending time with close friends', PersonalityType.Feeler),
    Answer('Planning tomorrows tasks', PersonalityType.Planer),
    Answer('Doing something active or exciting', PersonalityType.Adventurer),
  ]),
  

  Question("You're most comfortable when...", [
    Answer('Things make logical sense', PersonalityType.Thinker),
    Answer('Everyone is getting along', PersonalityType.Feeler),
    Answer('Theres a clear structure', PersonalityType.Planer),
    Answer('Youre free to try new things', PersonalityType.Adventurer),
  ]),


  Question("Your biggest strength is...",[
    Answer('Thinking critically', PersonalityType.Thinker),
    Answer('Empathizing with others', PersonalityType.Feeler),
    Answer('Staying organized', PersonalityType.Planer),
    Answer('Being adventurous', PersonalityType.Adventurer),
  ]),
];