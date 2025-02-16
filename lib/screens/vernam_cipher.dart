import 'package:encrypt_ed/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class VernamCipherScreen extends StatelessWidget {
  const VernamCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vernam Cipher')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Шифр Вернама',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Вернам шифр, также известный как одноразовый блокнот (one-time pad), был изобретен Гилбертом Вернамом в 1917 году.',
            ),
            const SizedBox(height: 10),
            const Image(image: AssetImage('assets/example_vernam.png')),
            const SizedBox(height: 10),
            const Text(
              'Шифр Вернама использует операцию XOR для каждого символа открытого текста с соответствующим символом ключа.',
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Quiz(quizType: 'vernam'),
                  ));
                },
                child: const Text('Train'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
