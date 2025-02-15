import 'package:flutter/material.dart';

class VernamCipherScreen extends StatelessWidget {
  const VernamCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vernam Cipher')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Шифр Вернама',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Вернам шифр, также известный как одноразовый блокнот (one-time pad), был изобретен Гилбертом Вернамом в 1917 году.',
            ),
            SizedBox(height: 10),
            Image(image: AssetImage('assets/example_vernam.png')),
            SizedBox(height: 10),
            Text(
              'Шифр Вернама использует операцию XOR для каждого символа открытого текста с соответствующим символом ключа.',
            ),
          ],
        ),
      ),
    );
  }
}
