import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Ciphers')),
        body: const CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Caesars cipher'),
                    subtitle: Text('It is a method that scrambles a '
                        'message by shifting its letters, was used for secret correspondence with military leaders.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 6),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Отступ между карточками
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Vernam cipher'),
                    subtitle: Text('It is a method of encrypting alphabetic text by using a simple form of polyalphabetic substitution.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 6),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Отступ между карточками
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Hill cipher'),
                    subtitle: Text('Advanced Encryption Standard is a specification for the encryption of electronic data established by the U.S. National Institute of Standards and Technology.'),
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 6),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Отступ между карточками
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('LEARN MORE'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 6),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
