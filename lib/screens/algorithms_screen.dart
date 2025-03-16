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
              description: 'Метод шифрования, изобретен в 1854 году.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoubleSquare(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildSettingCard(
              context,
              imagePath: 'assets/devil_magic_square.png',
              title: 'Магический квадрат',
              description: 'Таблица с равными суммами в строках, столбцах.',
              onTap: () {},
            ),
            const SizedBox(height: 12),
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double cardWidth = screenWidth * 0.9;
    double cardHeight = screenHeight * 0.25;
    double imageWidth = screenWidth * 0.36;
    double imageHeight = cardHeight * 0.84;

    double titleFontSize = screenWidth * 0.045;
    double descriptionFontSize = screenWidth * 0.04;

    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      height: cardHeight,
      width: cardWidth,
      child: Stack(
        children: [
          Positioned(
            top: cardHeight * 0.15,
            left: screenWidth * 0.05,
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.purple.withOpacity(0.6),
              borderRadius: BorderRadius.circular(7.0),
              child: Container(
                height: cardHeight - 40,
                width: cardWidth - 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: screenWidth * 0.05,
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.purple.withOpacity(0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: imageHeight,
                width: imageWidth,
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
            top: cardHeight * 0.2,
            left: screenWidth * 0.45,
            child: SizedBox(
              height: cardHeight - 40,
              width: cardWidth - imageWidth - 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: titleFontSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: descriptionFontSize,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: TextButton(
              onPressed: onTap,
              child: const Text(
                'Подробнее',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
