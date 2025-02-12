import 'Question.dart';

class QuestionBank {
  // Vernam
  List<Question> getVernamQuestions() {
    return [
      Question(
        question: 'Vernam Cipher: 1101 XOR 1010 = ?',
        options: ['0111', '1111', '1000', '1100'],
        answer: '0111',
      ),
      Question(
        question: 'Vernam Cipher: 1010 XOR 1100 = ?',
        options: ['0110', '1110', '1001', '1111'],
        answer: '0110',
      ),
      // add more
    ];
  }

  // Caesar
  List<Question> getCaesarQuestions() {
    return [
      Question(
        question: 'Caesar Cipher: A shifted by 3 gives?',
        options: ['C', 'B', 'D', 'E'],
        answer: 'C',
      ),
      Question(
        question: 'Caesar Cipher: Z shifted by 1 gives?',
        options: ['A', 'B', 'Y', 'Z'],
        answer: 'A',
      ),
      // add more
    ];
  }

  // Hill
  List<Question> getHillQuestions() {
    return [
      Question(
        question: 'Hill Cipher: Matrix [1, 2; 3, 4] with text "AB" results in?',
        options: ['CF', 'DE', 'AC', 'BD'],
        answer: 'CF',
      ),
      Question(
        question: 'Hill Cipher: Matrix [2, 3; 1, 4] with text "XY" results in?',
        options: ['ZA', 'YA', 'XB', 'XC'],
        answer: 'ZA',
      ),
      // add more
    ];
  }
}
