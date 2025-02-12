import 'package:encrypt_ed/screens/quizScreen.dart';
import 'package:flutter/material.dart';

class CardMap extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String exampleImage;
  final String details;

  const CardMap({
    required this.title,
    required this.description,
    required this.image,
    required this.exampleImage,
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 265,
                  decoration: BoxDecoration(
                    color: Color(0xFF0D030E),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Expanded(
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Expanded(
                      child: Image.asset(
                        exampleImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "How does it work",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    details,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Quiz(quizType: title), // Parametreyi geçiyoruz
                      ),
                    );
                  },
                  child: Text("Train"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
