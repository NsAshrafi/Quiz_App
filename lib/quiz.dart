import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
  
}

class _QuizState extends State<Quiz> {

  //swich screen
  // we used widget instead of var because widget is more general than that
  Widget activeScreen = const StartScreen();

  void SwitchScreen() {
    //this function should perform any data change activities that should be reflected on the user interface
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }


  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 0, 211, 169),
                  // Color.fromARGB(255, 208, 255, 0),
                 Color.fromARGB(255, 217, 20, 92),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              )),
          child: const StartScreen()),
      ),
    );
  }
}