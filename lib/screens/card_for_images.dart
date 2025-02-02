import 'package:flutter/material.dart';

void main(){
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
          child: Container(
            width: 200,
            height: 265,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.6),
                  spreadRadius: 3, 
                  blurRadius: 10,
                  offset: Offset(0, 3),
                  
                  
                )
              ]
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
              child:Column(
                children: [
                  Container(
                    child: Image.asset("assets/logo.png"),
                    
                  )

                ],
              ) ,
            ),

          ),
        ),
      ),
    );
  }
}
