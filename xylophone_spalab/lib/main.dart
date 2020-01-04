import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyWidget(Colors.red, 1),
              buildKeyWidget(Colors.orange, 2),
              buildKeyWidget(Colors.yellow, 3),
              buildKeyWidget(Colors.green, 4),
              buildKeyWidget(Colors.blueGrey, 5),
              buildKeyWidget(Colors.lightBlue, 6),
              buildKeyWidget(Colors.teal, 7),
            ],
          )),
        ),
      ),
    );
  }

  Expanded buildKeyWidget(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: null,
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
