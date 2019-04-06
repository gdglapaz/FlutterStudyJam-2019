import 'package:flutter/material.dart';
import 'package:anatomic_app/screens/home_screen.dart';

void main(){
  Color mPurpleColor = Color(0xFF6200ea);

  final avatar = Stack(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 10.0, top: 5.0),
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/avatar.jpg")
            ),
            borderRadius: BorderRadius.circular(50.0)
        ),
      ),
      Positioned(
        bottom: 10.0,
        child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(10.0)
          ),),)],);


  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            color: mPurpleColor,
          ),
          title: Text(
            "Anatomic App",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: mPurpleColor
            ),
          ),
          actions: <Widget>[
            avatar
          ],
        ),
        body: HomeScreen()
      )
    )
  );
}