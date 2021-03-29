import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQues;
  final String answerText;
  Answer(this.answerQues, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 50,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.red[600],
        textColor: Colors.white,
        
        child: Text(answerText,style: TextStyle(fontSize: 20),),
        onPressed: answerQues,
         shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
      ),
    );
  }
}
