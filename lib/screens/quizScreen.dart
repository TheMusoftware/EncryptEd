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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70),
            ),
            SizedBox(height: 20),
            Text(
              questions[questionIndex].question,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(height: 20),

            // Styled answer options
            ...questions[questionIndex].options.map((option) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () => checkAnswer(option),
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.purple.withOpacity(0.19)], // Dark gradient
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent, // Soft glow
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(4, 4), // Bottom-right shadow
                        ),
                        BoxShadow(
                          color: Colors.transparent, // Inner shadow
                          spreadRadius: -1,
                          blurRadius: 10,
                          offset: Offset(-4, -4), // Top-left shadow
                        ),
                      ],
                      border: Border.all(
                        color: Colors.purple.withOpacity(0.6), // Border color
                        width: 2, // Border thickness
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    child: Center(
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),

            SizedBox(height: 30),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}