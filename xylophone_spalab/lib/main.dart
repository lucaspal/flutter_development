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
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    playSound(6);
                  },
                  child: null,
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(7);
                  },
                  child: null,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
