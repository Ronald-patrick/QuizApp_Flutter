import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _qindex = 0;
  var _total_score = 0;

  void answerQues(int score) {
    _total_score += score;
    setState(() {
      _qindex++;
    });
    print(_qindex);
  }

  void _reset() {
    setState(() {
      _qindex = 0;
    _total_score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s My Favourite Color?',
        'answers': [
          {'text': 'Blue', 'score': 10},
          {'text': 'Green', 'score': 0},
          {'text': 'Red', 'score': 5},
          {'text': 'Yellow', 'score': 0},
        ]
      },
      {
        'questionText': 'What\'s My Favourite Animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 0},
          {'text': 'Horse', 'score': 10},
          {'text': 'Lion', 'score': 5},
          {'text': 'Snake', 'score': 0},
        ]
      },
      {
        'questionText': 'What\'s My Favourite Comedy Series?',
        'answers': [
          {'text': 'Friends', 'score': 0},
          {'text': 'B99', 'score': 5},
          {'text': 'Young Sheldon', 'score': 0},
          {'text': 'The Office', 'score': 10},
        ]
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz App')),
        backgroundColor: Colors.red[700],
      ),
      body: (_qindex < questions.length)
          ? Quiz(answerQues, questions, _qindex)
          : Result(_total_score,_reset),
    );
  }
}
