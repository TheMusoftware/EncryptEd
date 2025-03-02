import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    Future.delayed(const Duration(seconds: 1), () {
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
            title: Text('Тест пройден!', style: GoogleFonts.montserrat()),
            content: Text('Ваш счет: $score/${questions.length}', style: GoogleFonts.montserrat()),
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
                child: Text('Меню', style: GoogleFonts.montserrat()),
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
        title: Text('Тест', style: GoogleFonts.montserrat()),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Вопрос ${questionIndex + 1}/${questions.length}',
              style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            Text(
              questions[questionIndex].question,
              style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1,
                ),
                itemCount: questions[questionIndex].options.length,
                itemBuilder: (context, idx) {
                  String option = questions[questionIndex].options[idx];
                  return GestureDetector(
                    onTap: isButtonDisabled ? null : () => checkAnswer(idx),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: buttonColors[idx],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            option,
                            style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Ваш счет: $score',
              style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
