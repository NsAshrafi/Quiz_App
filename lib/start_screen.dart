import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  // {super.key} --> you want to accept argument name key and forward in to the super class
  //start quiz is a function that will be called when the button is pressed
  //this function is passed as an argument to the StartScreen constructor
  //this function is used to swich between screens
  // this function doesnt return a value
 const StartScreen( this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // we can give opacity in 2 ways
        //Opacity(opacity: o.6, child: Image.asset())
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
         Text(
          'Learn Flutter The Fun Way!',
          style: GoogleFonts.cinzel(
            color:const Color.fromARGB(255, 238, 192, 255),
            fontSize: 24,
          ),
        ),
        // add space between text and the button
       const SizedBox(height: 30),
       OutlinedButton.icon(
        onPressed: startQuiz,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white
        ),
        icon: const Icon(Icons.arrow_right_alt, color: Colors.amberAccent,),
        label: const Text('Start Quiz'),
         )
      ],
    ),);
  }
}
