import 'package:encrypt_ed/screens/card_for_images.dart';
import 'package:flutter/material.dart';

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

  void _navigateToDetails(BuildContext context, String title,
      String description, String image, String exampleImage, String details) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CardMap(
          title: title,
          description: description,
          image: image,
          exampleImage: exampleImage,
          details: details,
        ),
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
                'assets/caesar.jpg',
                'assets/example_caesar.png',
                'For instance, with a shift of 3, "A" becomes "D", "B" becomes "E", and so on. To use it, you decide on the shift number, and then replace each letter in your message using this shift.',
              ),
            ),
            CipherCard(
              icon: Icons.lock,
              title: 'Vernam Cipher',
              description:
                  'An encryption technique using a polyalphabetic substitution.',
              onTap: () => _navigateToDetails(
                context,
                'Шифр Вернама',
                'Вернам шифр, также известный как одноразовый блокнот (one-time pad), был изобретен Гилбертом Вернамом в 1917 году.',
                'assets/vernam.jpg',
                'assets/example_vernam.png',
                'Шифр Вернама использует операцию XOR для каждого символа открытого текста с соответствующим символом ключа.'
                'Если ключ действительно случайный и никогда не используется повторно, он считается невзламываемым, также этот метод шифрования отличается своей простотой и '
                    'абсолютной криптографической стойкостью при правильном применении.',
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
                'assets/hill.jpg',
                'assets/example_hill.png',
                'The Hill cipher operates by using matrix multiplication to encrypt blocks of letters. The size of the block is determined by the size of the encryption matrix.',
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
