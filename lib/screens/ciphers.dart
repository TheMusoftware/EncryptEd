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
            const SizedBox(height: 20),
            Container(
              height: 250,  // Increased height to allow more space
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 10,
                    child: Material(
                      child: Container(
                        height: 140,
                        width: 300,
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
                          image: const DecorationImage(
                            image: AssetImage("assets/caesar.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 145, // Positioning the text next to the image
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Шифр Цезаря",
                            style: TextStyle(
                              fontSize: 18, // Larger size for the title
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Один из наиболее древнейших методов шифрования, возникший около 100 г. до н.э.",
                            style: TextStyle(
                              fontSize: 12, // Smaller size for the description
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1.0),  // Adjust the value to raise or lower the button
                                child: TextButton(
                                  onPressed: () {
                                    // Navigate to the CaesarCipherScreen when the button is pressed
                                    _navigateToDetails(context, const CaesarCipherScreen());
                                  },
                                  child: const Text('Подробнее'),
                                ),
                              ),
                              const SizedBox(width: 6),
                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            CipherCard(
              icon: Icons.vpn_key,
              title: 'Шифр Цезаря',
              description:
              'Один из наиболее древнейших методов шифрования, возникший около 100 г. до н.э.',
              onTap: () => _navigateToDetails(context, const CaesarCipherScreen()),
            ),
            const SizedBox(height: 20),
            CipherCard(
              icon: Icons.lock,
              title: 'Шифр Вернама',
              description:
              'Метод шифрования с использованием многоалфавитной замены.',
              onTap: () => _navigateToDetails(context, const VernamCipherScreen()),
            ),
            const SizedBox(height: 20),
            CipherCard(
              icon: Icons.grid_on,
              title: 'Шифр Хилла',
              description:
              'Шифр Хилла – полиграммный шифр подстановки, основанный на умножении матриц.',
              onTap: () => _navigateToDetails(context, const HillCipherScreen()),
            ),
            const SizedBox(height: 20),

            // New Container with Stack widget



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
                child: const Text('Подробнее'),
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
