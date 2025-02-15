import 'package:flutter/material.dart';

class CaesarCipherScreen extends StatelessWidget {
  const CaesarCipherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Caesar Cipher')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Caesar Cipher',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width:200,  // Уменьшаем ширину карточки
                  height: 265,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D030E),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/caesar.jpg',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                'The Caesar cipher is a substitution cipher where each letter in the plaintext is shifted a certain number of places down the alphabet.',
              ),
              const SizedBox(height: 20),

              // Карточка с изображением
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10, // Тень для эффекта поднятия
                shadowColor: Colors.purple.withOpacity(0.6),
                child: Container(
                  width: 280,  // Уменьшаем ширину карточки
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/example_caesar.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'For instance, with a shift of 3, "A" becomes "D", "B" becomes "E", and so on.',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
