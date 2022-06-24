import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber) {
    Color tmpColor = Colors.red;
    switch (soundNumber) {
      case 1:
        tmpColor = Colors.red;
        break;
      case 2:
        tmpColor = Colors.orange;
        break;
      case 3:
        tmpColor = Colors.yellow;
        break;
      case 4:
        tmpColor = Colors.green;
        break;
      case 5:
        tmpColor = Colors.teal;
        break;
      case 6:
        tmpColor = Colors.blue;
        break;
      case 7:
        tmpColor = Colors.purple;
        break;
      default:
        tmpColor = Colors.black;
        break;
    }
    return (Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(tmpColor),
        ),
        child: const Text(''),
      ),
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'XylophoneApp',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[for (int i = 1; i < 8; i++) buildKey(i)],
            ),
          ),
        ));
  }
}
