import 'package:flutter/material.dart';

class StartPage extends StatelessWidget{
  const StartPage({super.key});
  @override
  Widget build(context){
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png',
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
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  
                ),
                onPressed: () {}, child: Text(
                  'Start Quiz',
              ),
              ),
            ],
          ),
        );
  }
}