import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          CustomText("April 6th", Colors.grey, 18.0),
          CustomText("Ready to Learn?", Colors.deepPurple, 24.0),
          CustomText("Handpicked", Colors.deepPurple, 20.0),
        ],
      ),
    );
  }
}
