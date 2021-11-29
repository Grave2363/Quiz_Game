import 'package:flutter/material.dart';

import 'Score_Screen01.dart';
class Quiz_01_Q3 extends StatefulWidget {
  final score;
  final Q3;
  final A1;
  final A2;
  final A3;
  final A4;
  const Quiz_01_Q3({Key? key, this.score, this.A1, this.A2, this.A3, this.A4, this.Q3}) : super(key: key);

  @override
  _Quiz_01_Q3State createState() => _Quiz_01_Q3State();
}

class _Quiz_01_Q3State extends State<Quiz_01_Q3> {
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
                Text(widget.Q3, textScaleFactor: 2,),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.A1, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Score_Screen01(score: widget.score, num_of_questions: 3,)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.A2, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q3()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.A3, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q3()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.A4, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q3()
                    ),
                    );
                  },
                ),
              ],
            ),
          )
      ),
    );
  }
}
