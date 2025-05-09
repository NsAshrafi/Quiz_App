import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      // this is a widget that will take the full width of the screen
      // and the height of the screen
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('The questions...'),
        const SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, 
        child: const Text('Answer 1'),
        ),
         const SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, 
        child: const Text('Answer 2'),
        ),
         const SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, 
        child: const Text('Answer 3'),
        ),
      ],),
    );
  }
}