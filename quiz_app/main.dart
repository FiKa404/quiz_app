import 'package:flutter/material.dart';
import 'package:flutter_app5/result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

var appbar_color = Colors.black87;

class _MyAppState extends State<MyApp> {

  int total_score;
  int score1,score2,score3;
  bool isSwitch = false;

  void reset() {
    setState(() {
      index = 0;
      total_score = 0;
    });
    score1 = 0;
    score2 = 0;
    score3 = 0;
  }

  var index = 0;

  void fun(score) {

    if(index == 0){
      score1=score;
    }else if(index == 1){
      score2 = score;
    }else if(index == 2){
      score3 = score;
    }

    total_score += score;

    setState(() {
      index++;
    });
  }

  final ques = [
    {
      'quesText': 'What\'s Your Favourite Color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30}
      ]
    },
    {
      'quesText': 'What\'s Your Favourite Youtuber?',
      'answer': [
        {'text': 'Tawfik', 'score': 10},
        {'text': 'Walid', 'score': 30},
        {'text': 'Mohamed', 'score': 20},
      ]
    },
    {
      'quesText': 'What\'s Your Favourite Game?',
      'answer': [
        {'text': 'Free Fire', 'score': 30},
        {'text': 'PUBG', 'score': 10},
        {'text': 'Fortnite', 'score': 20}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              value: isSwitch,
              inactiveTrackColor: Colors.white54,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  isSwitch = value;
                  if(isSwitch == true) appbar_color = Colors.blue;
                  else if(isSwitch == false) appbar_color = Colors.black87;
                });
              },
            ),
          ],
          backgroundColor: appbar_color,
          title: Text(
            'Quiz App',
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: index < ques.length ? Quiz(ques, index, fun) : Result(reset,total_score),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_ios_outlined),
          backgroundColor: appbar_color,
          onPressed: (){
            setState(() {
              if(index != 0) index--;
            });

            if(index == 1)total_score -= score1;
            if(index == 2)total_score -= score2;
            if(index == 3)total_score -= score3;
            },
        ),
      ),
    );
  }
}