import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Smart House App",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Center(
          child: Text(
            "Hello!!!",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),

    )
  );
}