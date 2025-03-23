import 'package:encrypt_ed/screens/standartization.dart';
import 'package:flutter/material.dart';

import 'cipher_card.dart';
import 'double_square.dart';

class Algorithms extends StatelessWidget {
  const Algorithms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Разное')),
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
            const SizedBox(height: 1),  // уменьшено расстояние между карточками
            CipherCard(
              imagePath: 'assets/shield.jpg',
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
              imagePath: 'assets/logowbg.png',
              title: 'О нас',
              description: 'Узнайте больше о нашем приложении.',
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

