import 'package:flutter/material.dart';
import 'package:smart_house_application/screens/home/home.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "Smart House App",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Home()
      ),
    )
  );
}


