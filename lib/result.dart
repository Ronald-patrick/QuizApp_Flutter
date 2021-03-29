import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function reset;
  Result(this.total, this.reset);
  String get resultPhrase {
    String phrase;
    (total < 30 && total >= 15)
        ? phrase = "You Still Have to Know more about Ronald😅"
        : phrase = "You Dont know Ronald😪";

    if (total == 30) {
      phrase = "You Know Ronald Very Well!🔥";
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total Score : $total',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20),
              Text(
                resultPhrase,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              FlatButton(
                onPressed: reset,
                child: Text('Restart Quiz!'),
                textColor: Colors.white,
                color: Colors.red[700],
              )
            ],
          ),
        ),
      ),
    );
  }
}
