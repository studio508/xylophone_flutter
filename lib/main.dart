import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());
// void main() {
//   runApp(const XylophoneApp());
// }

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$soundNumber.wav'));
  }

  Expanded builKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
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
              builKey(color: Colors.red, soundNumber: 1),
              builKey(color: Colors.orange, soundNumber: 2),
              builKey(color: Colors.yellow, soundNumber: 3),
              builKey(color: Colors.green, soundNumber: 4),
              builKey(color: Colors.blue, soundNumber: 5),
              builKey(
                  color: const Color.fromARGB(255, 17, 19, 129),
                  soundNumber: 6),
              builKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
