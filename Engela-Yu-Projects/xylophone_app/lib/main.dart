// ignore_for_file: deprecated_member_use

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(
      {required Color color, required int soundNumber, required String name}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text(name),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Xylophone App",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, name: 'One'),
              buildKey(color: Colors.purple, soundNumber: 2, name: 'Two'),
              buildKey(color: Colors.green, soundNumber: 3, name: 'Three'),
              buildKey(color: Colors.yellow, soundNumber: 4, name: 'Four'),
              buildKey(color: Colors.blue, soundNumber: 5, name: 'Five'),
              buildKey(color: Colors.teal, soundNumber: 6, name: 'Six'),
              buildKey(color: Colors.pink, soundNumber: 7, name: 'Seven'),
            ],
          ),
        ),
      ),
    );
  }
}
