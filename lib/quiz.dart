import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
  
}
// وقتی شما یک ویجت StatefulWidget 
//ایجاد می‌کنی، باید یک کلاس State
// هم براش بسازی که مسئول تغییرات و به‌روزرسانی ویجت در زمان اجرا هست.
class _QuizState extends State<Quiz> {

  final List<String>  selectedAnswer = [];
  // this is a list that will be used to store the selected answers
  // this is a variable that will be used to store the current screen
  // and it will be used to switch between screens
  var activeScreen = 'start-screen';

  //swich screen
  // we used widget instead of var because widget is more general than that
  //مقدار اولیه‌ش برابر با StartScreen()
  // هست. یعنی وقتی اپلیکیشن اجرا میشه، اول صفحه‌ی شروع 
  //(StartScreen) نشون داده میشه.
  //از نوع Widget استفاده کردی (نه var) چون Widget
  // نوع کلی‌تری هست
  // و دقیقاً مشخص می‌کنه که این متغیر قراره چی باشه (یک ویجت قابل نمایش در UI)
  //and this is a variable that will be used to store the current screen
  // Widget? activeScreen ;


  // @override
  //init state is a method that is called when the widget is first created
  // void initState() {
  //   activeScreen =  StartScreen(SwitchScreen);
    
  //   super.initState();
  // }

  void switchScreen() {
    //this function should perform any data change activities that should be reflected on the user interface
    //when you call setState in a state class , so a class connected to a statefulWidget , flutter will re-execute
    //-the build method and therefore , it will compare the result of executing that code 
    setState(() {
      activeScreen = 'questions-screen';
    });
  }


  void chooseAnswer(String answer) {
    // this function will be called when the user taps on an answer button
    selectedAnswer.add(answer);
    // this will add the selected answer to the list of selected answers
    // and it will be used to show the selected answers on the results screen

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
          
      });
    }
  
  }


  @override
  Widget build(context) {
      Widget screenWidget =  StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      // activeScreen = QuestionsScreen();
      
      screenWidget =  QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        );
    } 



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
              // const StartScreen() => here i wrote this instead of activeScreen
              // activeScreen => simply leads to dart looking into this variable and
              // -using that value that curently stored in. this active screen variable
              // -as a value for this child argument
          child: screenWidget ,
          ),
      ),
    );
  }
}