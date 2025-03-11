import 'package:flutter/material.dart';

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
              imagePath: 'assets/wheatstone.jpg',
              title: 'Двойной квадрат Уинстона',
              description: 'Метод шифрования, изобретен в 1854 году.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),

            // Privacy Settings
            _buildSettingCard(
              imagePath: 'assets/devil_magic_square.png',
              title: 'Магический квадрат',
              description: 'Таблица с равными суммами в строках, столбцах.',



              onTap: () {},
            ),
            const SizedBox(height: 12),

            // About
            _buildSettingCard(
              imagePath: 'assets/logo.png', //Will add more info here
              title: 'About',
              description: 'Learn more about the app.',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required String imagePath,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1), // Reduce space between cards
      height: 230,  // Reduce card height
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
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
      ),
      body: const Center(
        child: Text('Profile settings content goes here'),
      ),
    );
  }
}
