import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/caesar_cipher.dart';
import 'package:encrypt_ed/screens/vernam_cipher.dart';
import 'package:encrypt_ed/screens/hill_cipher.dart';
import 'package:encrypt_ed/screens/double_square.dart';

import 'cipher_card.dart';

class Ciphers extends StatelessWidget {
  const Ciphers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Шифры')),
      body: const CardExample(),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  void _navigateToDetails(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 1),
            CipherCard(

              imagePath: 'assets/caesar.jpg',
              title: 'Шифр Цезаря',
              description:
              'Один из наиболее древнейших методов шифрования (100 г. до н.э.)',
              onTap: () => _navigateToDetails(context, const CaesarCipherScreen()),
            ),
            const SizedBox(height: 1),  // уменьшено расстояние между карточками
            CipherCard(
              imagePath: 'assets/vernam.png',
              title: 'Шифр Вернама',
              description: 'Метод шифрования с использованием многоалфавитной замены.',
              onTap: () => _navigateToDetails(context, const VernamCipherScreen()),
            ),
            const SizedBox(height: 1),  // уменьшено расстояние между карточками
            CipherCard(
              imagePath: 'assets/hill.jpg',
              title: 'Шифр Хилла',
              description:
              'Шифр Хилла – полиграммный шифр, основанный на умножении матриц.',
              onTap: () => _navigateToDetails(context, const HillCipherScreen()),
            ),

            const SizedBox(height: 1),
            CipherCard(
              imagePath: 'assets/wheatstone.jpg',
              title: 'Двойной квадрат Уинстона',
              description:
              'Метод изобретен в 1854 году.',
              onTap: () => _navigateToDetails(context, const DoubleSquare()),
            ),

          ],
        ),
      ),
    );
  }
}

