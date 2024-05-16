import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: const StartScreen(),
        backgroundColor:
            Colors.grey[900], // Setting background color to dark gray
      ),
    );
  }
}
