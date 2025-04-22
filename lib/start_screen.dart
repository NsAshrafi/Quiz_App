import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // {super.key} --> you want to accept argument name key and forward in to the super class
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(child: Column(children: [
      Image.asset('assets/images/quiz-logo.png', width: 300,),
    ],));
  }
}
