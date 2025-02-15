import 'package:flutter/material.dart';

class HillCipherScreen extends StatelessWidget {
  const HillCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hill Cipher')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hill Cipher',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'The Hill cipher uses matrix multiplication to encrypt blocks of text, making it more secure than simple substitution ciphers.',
            ),
            SizedBox(height: 10),
            Image(image: AssetImage('assets/example_hill.png')),
            SizedBox(height: 10),
            Text(
              'The Hill cipher operates by using matrix multiplication to encrypt blocks of letters.',
            ),
          ],
        ),
      ),
    );
  }
}
