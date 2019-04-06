import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';
import 'package:anatomic_app/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  Color mPurpleColor = Color(0xFF6200ea);

  @override
  Widget build(BuildContext context) {
    final mVerticalList = Container(
      height: 240.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomCard.vertical(2, "Prueba 2", "assets/pic_1.jpg",Icon(Icons.account_balance_wallet), mPurpleColor ),
          CustomCard.vertical(3, "Prueba 3", "assets/pic_2.jpg",Icon(Icons.airline_seat_recline_extra), Color(0xFF0091ea) ),
          CustomCard.vertical(4, "Prueba 4", "assets/pic_3.jpg",Icon(Icons.accessible_forward),Color(0xFF00bfa5)),
        ],
      ),
    );

    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          CustomText.margin("April 6th", Colors.grey, 18.0, 20.0, 0.0, 20.0, 10.0),
          CustomText.margin("Ready to Learn?", Colors.deepPurple, 24.0, 20.0, 0.0, 0.0, 30.0),
          CustomCard(1, "Prueba", "assets/bones_1.jpg",Icon(Icons.account_balance_wallet), ),
          CustomText.margin("Handpicked", Colors.deepPurple, 20.0, 20.0, 0.0, 20.0, 30.0),
          mVerticalList
        ],
      ),
    );
  }
}
