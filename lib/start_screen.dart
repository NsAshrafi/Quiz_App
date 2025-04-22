import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // {super.key} --> you want to accept argument name key and forward in to the super class
  const StartScreen({super.key});

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
        const Text(
          'Learn Flutter The Fun Way!',
          style: TextStyle(
            color: Color.fromARGB(255, 238, 192, 255),
            fontSize: 24,
          ),
        ),
        // add space between text and the button
       const SizedBox(height: 30),
       OutlinedButton.icon(
        onPressed: (
          //....
        ) {},
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
