import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Magic 8 Ball"),
            backgroundColor: Colors.blueAccent,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  void nextBall() {
    ballNumber = 1 + Random().nextInt(5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: FlatButton(
          child: Image.asset("images/ball$ballNumber.png"),
          onPressed: () {
            setState(() {
              nextBall();
            });
          },
        ),
      ),
    );
  }
}
