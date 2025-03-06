import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/caesar_cipher.dart';
import 'package:encrypt_ed/screens/vernam_cipher.dart';
import 'package:encrypt_ed/screens/hill_cipher.dart';

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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CipherCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  const CipherCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:1), // уменьшено расстояние между карточками
      height: 230,  // уменьшена высота карточки
      child: Stack(
        children: [
          Positioned(
            top: 35,
            left: 10,
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.purple.withOpacity(0.6),
              borderRadius: BorderRadius.circular(7.0),
              child: Container(
                height: 140,
                width: 315,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.purple.withOpacity(0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: 150,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 145,
            child: SizedBox(
              height: 150,
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextButton(
                          onPressed: onTap,
                          child: const Text(
                            'Подробнее',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
