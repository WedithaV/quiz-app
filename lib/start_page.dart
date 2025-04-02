import 'package:flutter/material.dart';

class StartPage extends StatelessWidget{
  const StartPage(this.startPage,{super.key});
  final void Function() startPage;

  @override
  Widget build(context){
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                color: const Color.fromARGB(178, 255, 255, 255),
              width: 300,),
              SizedBox(height: 60,),
              Text(
                'Learn Flutter the fun way !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                ),
              SizedBox(height: 40,),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  
                ),
                onPressed: startPage, 
                icon: Icon(Icons.arrow_right_outlined),
                label: Text(
                  'Start Quiz',
              ),
              ),
            ],
          ),
        );
  }
}