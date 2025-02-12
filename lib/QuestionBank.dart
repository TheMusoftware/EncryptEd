import 'Question.dart';

class QuestionBank {
  // Vernam
  List<Question> getVernamQuestions() {
    return [
      Question(
        question: 'Vernam Cipher is also known as?',
        options: ['One-time pad', 'Shift cipher', 'Block cipher', 'Stream cipher'],
        answer: 'One-time pad',
      ),
      Question(
        question: 'What kind of operation is central to the Vernam Cipher?',
        options: ['Addition', 'Subtraction', 'XOR', 'Modulo'],
        answer: 'XOR',
      ),

      Question(
        question: 'The key length in a Vernam Cipher should be?',
        options: ['As long as the message', 'Shorter than the message', 'Equal to the message length',
          'As long as the message'],
        answer: '0110',
      ),

      Question(
        question: 'Which organization initially developed the Vernam Cipher?',
        options: ['Bell Labs', 'NSA (National Security Agency)', 'IBM (International Business Machines)'
         'RAND Corporation' ,
          'Bell Labs'],
        answer: '0110',
      ),

      Question(
        question: 'Vernam Cipher is considered secure if?',
        options: ['The key is used more than once', 'The key is longer than the message',
          'The key is a random sequence of bits used only once',
          'The message is encrypted in blocks'],
        answer: 'The key is a random sequence of bits used only once',
      ),

      Question(
        question: 'The key length in a Vernam Cipher should be?',
        options: ['As long as the message', 'Shorter than the message', 'Equal to the message length',
          'Twice the message length'],
        answer: '0110',
      ),


      // add more
    ];
  }
//questions caesar
  // Caesar
  List<Question> getCaesarQuestions() {
    return [
      Question(
        question: 'What is the primary key size used in Caesar Cipher?',
        options: ['1-25', '1-26', '1-20', '1-30'],
        answer: '1-25',
      ),
      Question(
        question: 'What is a primary weakness of the Caesar Cipher?',
        options: ['High computation', 'Easy to brute force',
          'Requires complex key management', 'Difficult to implement'],
        answer: 'Easy to brute force',
      ),

      Question(
        question: "In Caesar Cipher, what happens when you shift 'Z' by 1 position?",
        options: ['A', 'B', 'Y', 'Z'],
        answer: 'A',
      ),
      Question(
        question: "Where and when was the Caesar Cipher used?",
        options: ['Ancient Greece, around 500 BC',
          'Medieval Europe, around 1000 AD', 'Renaissance Italy, around 1500 AD',
          'Ancient Rome, around 100 BC'],
        answer: 'Ancient Rome, around 100 BC',
      ),
      Question(
        question: "Caesar Cipher shifts each letter by how many positions in its simplest form?",
        options: ['1', '2', '3', '4'],
        answer: '3',
      ),
      Question(
        question: "What is a primary characteristic of the Caesar Cipher?",
        options: ['Polygraphic substitution', 'Monographic substitution',
          'Polyalphabetic substitution', 'Transposition'],
        answer: 'Monographic substitution',
      ),
      // add more
    ];
  }

  // Hill
  List<Question> getHillQuestions() {
    return [
      Question(
        question: 'Which type of matrix is used in Hill Cipher?',
        options: ['Identity matrix', 'Diagonal matrix', 'Key matrix', 'Symmetric matrix'],
        answer: 'Key matrix',
      ),
      Question(
        question: 'The key matrix in Hill Cipher should have what property?',
        options: ['Invertible modulo 26', 'Diagonal elements equal',
          'Symmetric elements', 'Upper triangular form'],
        answer: 'Invertible modulo 26',
      ),
      Question(
        question: 'In Hill Cipher, the determinant of the key matrix should be?',
        options: ['Zero', 'One', 'Non-zero and invertible', 'Any integer'],
        answer: 'Non-zero and invertible',
      ),
      Question(
        question: 'Hill Cipher encryption relies on which mathematical concept?',
        options: ['Modular arithmetic', 'Prime factorization', 'Matrix multiplication', 'Linear congruence'],
        answer: 'Matrix multiplication',
      ),
      Question(
        question: 'Hill Cipher can be applied to which type of data?',
        options: ['Text', 'Images', 'Audio', 'Any digital data'],
        answer: 'Any digital data',
      ),
      Question(
        question: 'What is the fundamental principle behind the Hill Cipher?',
        options: ['Linear algebra', 'Number theory', 'Factorization', 'Elliptic curves'],
        answer: 'Linear algebra',
      ),
      // add more
    ];
  }
}
