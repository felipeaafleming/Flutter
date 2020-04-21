import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play({int audioNumber}) {
    final player = AudioCache();
    player.play("note$audioNumber.wav");
  }

  Expanded create({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(audioNumber: number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                create(color: Colors.red, number: 1),
                create(color: Colors.teal, number: 2),
                create(color: Colors.yellow, number: 3),
                create(color: Colors.deepPurpleAccent, number: 4),
                create(color: Colors.lightBlueAccent, number: 5),
                create(color: Colors.black38, number: 6),
                create(color: Colors.brown, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
