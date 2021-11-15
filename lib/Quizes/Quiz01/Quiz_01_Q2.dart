import 'package:flutter/material.dart';
class Quiz_01_Q2 extends StatefulWidget {
  final score;
  final Q2;
  final A1;
  final A2;
  final A3;
  final A4;
  const Quiz_01_Q2({Key? key, this.score, this.A1, this.A2, this.A3, this.A4, this.Q2}) : super(key: key);

  @override
  _Quiz_01_Q2State createState() => _Quiz_01_Q2State();
}

class _Quiz_01_Q2State extends State<Quiz_01_Q2> {
  String Q3 = "temp question";
  String A1_Q3 = "temp Ans";
  String A2_Q3 = "temp Ans";
  String A3_Q3 = "temp Ans";
  String A4_Q3 = "temp Ans";

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
                Text(widget.Q2, textScaleFactor: 2,),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.A1, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q2()
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
                        builder: (context) => Quiz_01_Q2()
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
                        builder: (context) => Quiz_01_Q2()
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
                        builder: (context) => Quiz_01_Q2()
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
