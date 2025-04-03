import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_page.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen ;

  @override
  void initState() {
    activeScreen = StartPage(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 52, 8, 129),
                const Color.fromARGB(255, 131, 93, 238),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          ),
      ),
    );
  }
}