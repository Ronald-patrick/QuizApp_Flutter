import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int _qindex;
  final Function answerQues;
  Quiz(this.answerQues, this.questions, this._qindex);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questions[_qindex]['questionText']),
          SizedBox(
            height: 20,
          ),
          ...(questions[_qindex]['answers'] as List<Map<String,Object>>).map((q) {
            return Answer(()=>answerQues(q['score']), q['text']);
          }).toList()
        ],
      ),
    );
  }
}
