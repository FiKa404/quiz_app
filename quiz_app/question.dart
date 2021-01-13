import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;

  Question(this.ques);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(20),
      child: Text(
        ques,
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
