import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded block({required Color color,required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
            onPressed: () {
              playSound(soundNumber);
            },
            style: ButtonStyle(enableFeedback: false),
            child: Text('')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              block(color: Colors.red,soundNumber: 1),
              block(color: Colors.orange,soundNumber: 2),
              block(color: Colors.yellow,soundNumber: 3),
              block(color: Colors.green,soundNumber: 4),
              block(color: Colors.blue,soundNumber: 5),
              block(color: Colors.indigo,soundNumber: 6),
              block(color: Colors.purple,soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
