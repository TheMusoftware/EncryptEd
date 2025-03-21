import 'package:encrypt_ed/screens/standartization.dart';
import 'package:flutter/material.dart';
import 'double_square.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Алгоритмы'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSettingCard(
              context,
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
            _buildSettingCard(
              context,
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
            _buildSettingCard(
              context,
              imagePath: 'assets/logo.png',
              title: 'About',
              description: 'Learn more about the app.',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard(
      BuildContext context, {
        required String imagePath,
        required String title,
        required String description,
        required VoidCallback onTap,
      }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1),  // уменьшено расстояние между карточками
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
                      fontSize: 18,  // установлено фиксированное значение для шрифта
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,  // установлено фиксированное значение для шрифта
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
