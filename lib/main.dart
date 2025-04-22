import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 0, 211, 169),
                  Color.fromARGB(255, 208, 255, 0),
                 Color.fromARGB(255, 217, 20, 92),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              )),
          child: const StartScreen()),
      ),
    ),
  );
}
