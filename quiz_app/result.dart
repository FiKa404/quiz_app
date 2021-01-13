import 'package:flutter/material.dart';

class Result extends StatelessWidget {


  final Function f;
  final result;
  Result(this.f,this.result);

  String get resultphrase{
    String resultext;

    if(result >= 70){
      resultext = 'You Are Very Good';
    }else if(result >= 40){
      resultext = 'Nice !';
    }else{
      resultext = 'Too Bad';
    }

    return resultext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Score is : $result \n',style: TextStyle(fontSize: 20),),

            Text(
              '$resultphrase',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              width: 0,
              height: 20,
            ),

            OutlineButton(
              padding: EdgeInsets.all(10),
                child: Text('Restart',style: TextStyle(color: Colors.black87,fontSize: 20),),
                onPressed: (){
                f();
            })

          ],
        ));
  }
}
