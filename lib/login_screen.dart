import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cryptography App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment(0.0, -0.9),
                child: Text(
                  'Log in',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(

                decoration: InputDecoration(
                  labelText: 'Gmail',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(

                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
