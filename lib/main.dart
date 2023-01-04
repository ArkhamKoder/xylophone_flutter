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

  Expanded buildExpand() {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(2);
        },
        color: Colors.orange,
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
              buildExpand(),
              buildExpand(),
              buildExpand(),
              buildExpand(),
              buildExpand(),
              buildExpand(),
              buildExpand(),
            ],
          ),
        ),
      ),
    );
  }
}
