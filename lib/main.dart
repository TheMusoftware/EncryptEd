import 'package:encrypt_ed/screens/ciphers.dart';
import 'package:encrypt_ed/screens/login_screen.dart';
import 'package:encrypt_ed/screens/opening_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      initialRoute: '/',
      routes: {
        '/' : (context) => const OpeningScreen(),
        '/login': (context) => const ScreenLogin(),
        '/home': (context) => const CardExampleApp(),
      },
    );
  }
}
