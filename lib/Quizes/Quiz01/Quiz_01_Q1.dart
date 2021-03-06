import 'package:flutter/material.dart';

import 'Quiz_01_Q2.dart';
class Quiz_01_Q1 extends StatefulWidget {
  const Quiz_01_Q1({Key? key}) : super(key: key);

  @override
  _Quiz_01_Q1State createState() => _Quiz_01_Q1State();
}

class _Quiz_01_Q1State extends State<Quiz_01_Q1> {
  String Q2 = "temp question";
  String A1_Q2 = "temp Ans";
  String A2_Q2 = "temp Ans";
  String A3_Q2 = "temp Ans";
  String A4_Q2 = "temp Ans";

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
                Text("Lets start simple, whats 2+2?", textScaleFactor: 2,),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('                       4                       ', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q2(score: 1,A1: A1_Q2,A2: A2_Q2,A3: A3_Q2,A4: A4_Q2,Q2: Q2)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('                       5                       ', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q2(score: 0,A1: A1_Q2,A2: A2_Q2,A3: A3_Q2,A4: A4_Q2,Q2: Q2)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('    go back to first answer    ', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q2(score: 0,A1: A1_Q2,A2: A2_Q2,A3: A3_Q2,A4: A4_Q2,Q2: Q2)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('You went too far, return to 1', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q2(score: 0,A1: A1_Q2,A2: A2_Q2,A3: A3_Q2,A4: A4_Q2,Q2: Q2)
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
