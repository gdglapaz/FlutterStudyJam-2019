import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String mTitle = "";
  Color mColor;
  double mSize = 16;

  CustomText(this.mTitle, this.mColor, this.mSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        mTitle,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: mColor,
          fontSize: mSize,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
