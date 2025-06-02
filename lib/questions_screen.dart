import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer, });
  // this is a constructor that will be used to create an instance of the QuestionsScreen widget

  final void Function (String answer) onSelectAnswer;
  // this is a function that will be called when the user taps on an answer button
  // it will be used to pass the selected answer to the parent widget

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  // this is a variable that will be used to store the current question index
  // and it will be used to show the current question on the screen

  void answerQuestion(String selectedAnswer) {
    // this function will be called when the user taps on an answer button
    widget.onSelectAnswer(selectedAnswer); 
    // this will call the onSelectAnswer function that is passed as an argument to the QuestionsScreen widget
    // and it will pass the selected answer to the parent widget
    // you can also pass the current question text or the selected answer text here
    // for example, you can pass the current question text like this:
    // widget.onSelectAnswer(questions[currentQuestionIndex].text);
    // or you can pass the selected answer text like this:
    // widget.onSelectAnswer(currentQuestion.getShuffledAnswers()[0]);
    
        //currentQuestionIndex = currentQuestionIndex + 1;
    // this function will be called when the user taps on an answer button
    //currentQuestionIndex+= 1;
    setState(() {
     // currentQuestionIndex += 1;
      // this will call the build method again and update the UI
    currentQuestionIndex++; //increment the value of currentQuestionIndex by 1
     });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      // this is a widget that will take the full width of the screen
      // and the height of the screen
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.arvo(
                color: const Color.fromARGB(255, 246, 193, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // this is a spread operator that will take the list of answers and convert it to a list of widgets
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
