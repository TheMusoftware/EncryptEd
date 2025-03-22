import 'package:encrypt_ed/screens/standartization.dart';
import 'package:flutter/material.dart';

import 'cipher_card.dart';
import 'double_square.dart';

class Algorithms extends StatelessWidget {
  const Algorithms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Алгоритмы')),
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

              imagePath: 'assets/wheatstone.jpg',
              title: 'Двойной квадрат Уинстона',
              description: 'Метод изобретен в 1854 году.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoubleSquare(),
                  ),
                );
              },
            ),
            const SizedBox(height: 1),  // уменьшено расстояние между карточками
            CipherCard(
              imagePath: 'assets/devil_magic_square.png',
              title: 'Криптографическая стандартизация ',
              description: 'Информация о криптографической стандартизации.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Standartization(),
                  ),
                );
              },
            ),
            const SizedBox(height: 1),  // уменьшено расстояние между карточками
            CipherCard(
              imagePath: 'assets/logo.png',
              title: 'About',
              description: 'Learn more about the app.',
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

