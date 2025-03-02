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
           /* Container(
              height: 250,  // Increased height to allow more space
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0)),
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 10,
                    child: Material(
                      child: Container(
                        height: 140,
                        width: 350,
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
                          const Text(
                            "Шифр Цезаря",
                            style: TextStyle(
                              fontSize: 18, // Larger size for the title
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
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
                                  child: const Text('Подробнее',style: TextStyle(fontSize: 18),),
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
*/
            CipherCard(
              imagePath: 'assets/hill.jpg',
              title: 'Шифр Цезаря',
              description:
              'Один из наиболее древнейших методов шифрования, возникший около 100 г. до н.э.',
              onTap: () => _navigateToDetails(context, const CaesarCipherScreen()),
            ),
            const SizedBox(height: 20),
            CipherCard(
              imagePath: 'assets/hill.jpg',
              title: 'Шифр Вернама',
              description:
              'Метод шифрования с использованием многоалфавитной замены.',
              onTap: () => _navigateToDetails(context, const VernamCipherScreen()),
            ),
            const SizedBox(height: 20),
            CipherCard(
              imagePath: 'assets/hill.jpg',
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
      height: 250,
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
                width: 350,
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
                            style: TextStyle(fontSize: 18),
                          ),
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
    );

  }
}