import 'package:flutter/material.dart';
import '../Question.dart';
import '../QuestionBank.dart';

class Quiz extends StatefulWidget {
  final String quizType;

  Quiz({Key? key, required this.quizType}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int questionIndex = 0;
  int score = 0;
  final QuestionBank questionBank = QuestionBank();
  late List<Question> questions;
  List<Color> buttonColors = [];

  @override
  void initState() {
    super.initState();
    switch (widget.quizType) {
      case 'Vernam Cipher':
        questions = questionBank.getVernamQuestions();
        break;
      case 'Hill Cipher':
        questions = questionBank.getHillQuestions();
        break;
      case 'Caesar Cipher':
        questions = questionBank.getCaesarQuestions();
        break;
      default:
        questions = [];
    }
    buttonColors = List.generate(questions[questionIndex].options.length,
        (index) => Colors.deepPurpleAccent);
  }

  // Updated checkAnswer function to accept an int (selected answer index)
  void checkAnswer(int selectedAnswerIndex) {
    int correctAnswerIndex = questions[questionIndex]
        .answer; // Assuming 'answer' stores the correct answer index

    if (selectedAnswerIndex == correctAnswerIndex) {
      setState(() {
        score++;
        buttonColors[selectedAnswerIndex] = Colors.green;
      });
    } else {
      setState(() {
        buttonColors[selectedAnswerIndex] = Colors.red;
        buttonColors[correctAnswerIndex] = Colors.green;
      });
    }

    // Wait 3 seconds before moving to the next question
    Future.delayed(Duration(seconds: 3), () {
      if (questionIndex < questions.length - 1) {
        setState(() {
          questionIndex++;
          // Reset button colors for the next question
          buttonColors = List.generate(
              questions[questionIndex].options.length, (index) => Colors.blue);
        });
      } else {
        // Show result if all questions are answered
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
    });
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
            ...questions[questionIndex].options.asMap().entries.map((entry) {
              int idx = entry.key;
              String option = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => checkAnswer(idx),
                  // Pass the index instead of the answer text
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColors[idx]),
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
