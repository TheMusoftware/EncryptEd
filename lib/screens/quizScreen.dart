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
            (index) => Colors.transparent);
  }

  void checkAnswer(int selectedAnswerIndex) {
    int correctAnswerIndex = questions[questionIndex].answer;

    setState(() {
      if (selectedAnswerIndex == correctAnswerIndex) {
        score++;
        buttonColors[selectedAnswerIndex] = Colors.green;
      } else {
        buttonColors[selectedAnswerIndex] = Colors.red;
        buttonColors[correctAnswerIndex] = Colors.green;
      }
    });

    Future.delayed(Duration(seconds: 3), () {
      if (questionIndex < questions.length - 1) {
        setState(() {
          questionIndex++;
          buttonColors = List.generate(questions[questionIndex].options.length,
                  (index) => Colors.transparent);
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
                child: Text('Return to Main Menu'),
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

            // Кнопки с прозрачным фоном, меняющимся на красный или зеленый при выборе
            ...questions[questionIndex].options.asMap().entries.map((entry) {
              int idx = entry.key;
              String option = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity, // Кнопка по всей ширине
                  decoration: BoxDecoration(
                    color: buttonColors[idx], // Фон меняется моментально
                    border: Border.all(color: Colors.deepPurple, width: 2), // Фиолетовая граница
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () => checkAnswer(idx),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15), // Увеличенный размер кнопки
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white, // Цвет текста
                    ),
                    child: Text(option, style: TextStyle(fontSize: 18)),
                  ),
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
