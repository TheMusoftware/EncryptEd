import 'package:flutter/material.dart';

void main() {
  runApp(CardMap());
}

class CardMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50), // height from the top, distance kinda
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
                      child: Image.asset("assets/caesar.jpg"),
                    ),
                  ),
                  SizedBox(height: 20), // distance after card
                  Text(
                      "Julius Caesar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5), // distance after title
                  Text(
                    "Caesar's cipher is one of the earliest encryption techniques, is named after Julius Caesar who used it in his private correspondence. "
                    "It’s a type of substitution cipher where each letter in the plaintext is shifted a certain number of places down or up the alphabet. For instance, with a shift of 3, 'A' becomes 'D', 'B' becomes 'E', and so on. To use it, you decide on the shift number, and then replace each letter in your message using this shift. While simple, "
                    "the Caesar Cipher is quite easy to break with modern cryptographic techniques.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 50), // distance between cards
                  Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
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
                      child: Row(
                        children: [
                          Image.asset("assets/logo.png"),
                          SizedBox(width: 10), // distance near to logo
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // distance after card
                  Text(
                    "Horizontal Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5), // distance after title
                  Text(
                    "This is a horizontal card with some description.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
