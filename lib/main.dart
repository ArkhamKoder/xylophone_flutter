import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildExpand({required Color color, required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
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
            children: [
              buildExpand(color: Colors.red, soundNumber: 1),
              buildExpand(color: Colors.orange, soundNumber: 2),
              buildExpand(color: Colors.yellow, soundNumber: 3),
              buildExpand(color: Colors.green, soundNumber: 4),
              buildExpand(color: Colors.blue, soundNumber: 5),
              buildExpand(color: Colors.indigo, soundNumber: 6),
              buildExpand(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
