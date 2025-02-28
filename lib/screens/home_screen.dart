import 'package:encrypt_ed/screens/ciphers.dart';
import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Ciphers(),
    const Center(child: Text('Temp 03', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.catching_pokemon),
          Icon(Icons.settings),
        ],
        inactiveIcons: const [
          Text("Home"),
          Text("Settings"),
        ],
        color: Colors.black,
        circleColor: Colors.black,
        height: 60,
        circleWidth: 60,
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        circleShadowColor: Colors.blue,
        elevation: 10,
      ),
    );
  }
}
