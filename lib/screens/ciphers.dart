import 'package:flutter/material.dart';

void main() {
  runApp(const CipherApp());
}

class CipherApp extends StatelessWidget {
  const CipherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ciphers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardExampleApp(),
    );
  }
}

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

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

  void _navigateToDetails(
      BuildContext context, String title, String description) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            CipherDetailPage(title: title, description: description),
      ),
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
              onTap: () => _navigateToDetails(
                context,
                'Caesar Cipher',
                'The Caesar cipher is a substitution cipher where each letter in the plaintext is shifted a certain number of places down the alphabet.',
              ),
            ),
            CipherCard(
              icon: Icons.lock,
              title: 'Vernam Cipher',
              description:
              'An encryption technique using a polyalphabetic substitution.',
              onTap: () => _navigateToDetails(
                context,
                'Vernam Cipher',
                'The Vernam cipher, also known as the one-time pad, is an encryption technique that uses a key that is as long as the message itself.',
              ),
            ),
            CipherCard(
              icon: Icons.grid_on,
              title: 'Hill Cipher',
              description:
              'An encryption method based on matrix multiplication.',
              onTap: () => _navigateToDetails(
                context,
                'Hill Cipher',
                'The Hill cipher uses matrix multiplication to encrypt blocks of text, making it more secure than simple substitution ciphers.',
              ),
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

class CipherDetailPage extends StatelessWidget {
  final String title;
  final String description;

  const CipherDetailPage({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(description, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}