import 'package:flutter/material.dart';
import 'package:anatomic_app/screens/home_screen.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Anatomic App",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: HomeScreen()
      )
    )
  );
}