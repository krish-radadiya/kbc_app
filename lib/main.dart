import 'package:flutter/material.dart';
import 'package:kbc/screens/FirstScreen.dart';
import 'package:kbc/screens/LoseScreen.dart';
import 'package:kbc/screens/WonScreen.dart';
void main() {
  runApp(
    MaterialApp(
      initialRoute: 'Main_Game',
      routes: {
        'Main_Game': (context) => const Main_Game(),
        'Lose_game': (context) => const Lose_game(),
        'Cong_game': (context) => const Cong_game(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}