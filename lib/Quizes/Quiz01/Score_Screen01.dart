import 'package:flutter/material.dart';
class Score_Screen01 extends StatefulWidget {
  final score;
  final num_of_questions;
  const Score_Screen01({Key? key, this.score, this.num_of_questions}) : super(key: key);

  @override
  _Score_Screen01State createState() => _Score_Screen01State();
}

class _Score_Screen01State extends State<Score_Screen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('Quiz Game'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Results", textScaleFactor: 2,),
              Text( widget.score + " out of "+ widget.num_of_questions +" questions", textScaleFactor: 2,),
              Text("Witty message here", textScaleFactor: 2,)
            ]
          ),
        ),
      ),
    );
  }
}
