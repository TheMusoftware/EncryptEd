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
  bool isButtonDisabled = false;

  @override
  void initState() {
    super.initState();
    switch (widget.quizType) {
      case 'vernam':
        questions = questionBank.getVernamQuestions();
        break;
      case 'hill':
        questions = questionBank.getHillQuestions();
        break;
      case 'caesar':
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
      isButtonDisabled = true;
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
          isButtonDisabled = false;
        });
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Тест пройден!'),
            content: Text('Ваш счет: $score/${questions.length}'),
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
                child: Text('Меню'),
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
        title: Text('Тест'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Вопрос ${questionIndex + 1}/${questions.length}',
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
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: buttonColors[idx],
                    border: Border.all(color: Colors.deepPurple, width: 2), // Border
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: isButtonDisabled
                        ? null
                        : () => checkAnswer(idx),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(option, style: const TextStyle(fontSize: 18)),
                  ),
                ),
              );
            }),

            const SizedBox(height: 20),
            Text('Ваш счет: $score', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
