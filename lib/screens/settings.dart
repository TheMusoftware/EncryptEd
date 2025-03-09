import 'package:encrypt_ed/widgets/settingsCard.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SettingCard(
              imagePath: 'assets/logo.png',
              title: 'Profile Settings',
              description: 'Change your profile settings.',
              onTap: () {},
            ),
            const SizedBox(height: 12),

            // Privacy Settings
            SettingCard(
              imagePath: 'assets/logo.png',
              title: 'Privacy Settings',
              description: 'Control your privacy settings.',
              onTap: () {},
            ),
            const SizedBox(height: 12),

            // About
            SettingCard(
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
}
