import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function x;

  Answer(this.x,this.answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 14,horizontal: 35),
      width: double.infinity,
      child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              padding: EdgeInsets.all(16),
              color: appbar_color,
              onPressed: x,
              child:Text(answerText,style: TextStyle(fontSize: 20,color: Colors.white,),)
          ),
    );
  }
}
