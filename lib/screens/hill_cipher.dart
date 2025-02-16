import 'package:encrypt_ed/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class HillCipherScreen extends StatelessWidget {
  const HillCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hill Cipher')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hill Cipher',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'The Hill cipher uses matrix multiplication to encrypt blocks of text, making it more secure than simple substitution ciphers.',
            ),
            const SizedBox(height: 10),
            const Image(image: AssetImage('assets/example_hill.png')),
            const SizedBox(height: 10),
            const Text(
              'The Hill cipher operates by using matrix multiplication to encrypt blocks of letters.',
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(quizType: 'hill'),
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
