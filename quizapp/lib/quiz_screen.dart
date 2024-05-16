import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Do you think True is False?',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 1},
      ],
    },
    {
      'questionText': 'What is True exactly?',
      'answers': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ],
    },
    {
      'questionText': 'What is false False that is True?',
      'answers': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ],
    },
  ];

  int _currentQuestionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: _currentQuestionIndex < _questions.length
          ? _buildQuiz()
          : _buildResult(),
    );
  }

  Widget _buildQuiz() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _questions[_currentQuestionIndex]['questionText'] as String,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ...(_questions[_currentQuestionIndex]['answers']
                  as List<Map<String, Object>>)
              .map((answer) {
            return ElevatedButton(
              onPressed: () => _answerQuestion(answer['score'] as int),
              child: Text(answer['text'] as String),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildResult() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Completed!',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 16),
          Text(
            'Your mind is $_totalScore out of ${_questions.length}.',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _currentQuestionIndex = 0;
                _totalScore = 0;
              });
            },
            child: const Text('Revalue Quiz?'),
          ),
        ],
      ),
    );
  }
}
