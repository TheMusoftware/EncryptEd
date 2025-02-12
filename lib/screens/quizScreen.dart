import 'package:flutter/material.dart';

import '../Question.dart';
import '../QuestionBank.dart';

class Quiz extends StatefulWidget {
  final String quizType;

/* Types : Vernam Caesar Hill */

  Quiz({Key? key, required this.quizType}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int questionIndex = 0;
  int score = 0;
  final QuestionBank questionBank = QuestionBank();
  late List<Question> questions;

  @override
  void initState() {
    super.initState();
    // Get question here
    switch (widget.quizType) {
      case 'Vernam Cipher':
        questions = questionBank.getVernamQuestions();
      case 'Hill Cipher':
        questions = questionBank.getHillQuestions();
      case 'Caesar Cipher':
        questions = questionBank.getCaesarQuestions();
    }
  }

  void checkAnswer(String selectedAnswer) {
    if (selectedAnswer == questions[questionIndex].answer) {
      setState(() {
        score++;
      });
    }

    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Quiz Completed!'),
          content: Text('Your score is $score/${questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  questionIndex = 0;
                  score = 0;
                });
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text('Return Main Menu'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${questionIndex + 1}/${questions.length}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              questions[questionIndex].question,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ...questions[questionIndex].options.map((option) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => checkAnswer(option),
                  child: Text(option),
                ),
              );
            }).toList(),
            SizedBox(height: 20),
            Text('Score: $score', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
