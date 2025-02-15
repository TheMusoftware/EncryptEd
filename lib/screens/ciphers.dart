import 'package:flutter/material.dart';
import 'package:encrypt_ed/screens/caesar_cipher.dart';
import 'package:encrypt_ed/screens/vernam_cipher.dart';
import 'package:encrypt_ed/screens/hill_cipher.dart';


class Ciphers extends StatelessWidget {
  const Ciphers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ciphers')),
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
            CipherCard(
              icon: Icons.vpn_key,
              title: 'Caesar Cipher',
              description:
              'A method that scrambles a message by shifting its letters.',
              onTap: () => _navigateToDetails(context, const CaesarCipherScreen()),
            ),
            CipherCard(
              icon: Icons.lock,
              title: 'Vernam Cipher',
              description:
              'An encryption technique using a polyalphabetic substitution.',
              onTap: () => _navigateToDetails(context, const VernamCipherScreen()),
            ),

            CipherCard(
              icon: Icons.grid_on,
              title: 'Hill Cipher',
              description: 'An encryption method based on matrix multiplication.',
              onTap: () => _navigateToDetails(context, const HillCipherScreen()),
            ),
          ],
        ),
      ),
    );
  }
}

class CipherCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const CipherCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(icon, size: 40),
            title: Text(title),
            subtitle: Text(description),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: onTap,
              ),
              const SizedBox(width: 6),
            ],
          ),
        ],
      ),
    );
  }
}
