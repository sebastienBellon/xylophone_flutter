import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'XylophoneApp',
        home: Scaffold(
          body: SafeArea(
            child: Center(
              child: TextButton(
                child: Text('Click Me'),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                  //player.play();
                },
              ),
            ),
          ),
        ));
  }
}
