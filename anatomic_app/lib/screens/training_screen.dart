import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_card.dart';

class TrainingScreen extends StatelessWidget {
  Color mPurpleColor = Color(0xFF6200ea);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomCard.vertical(2, "Prueba 2", "assets/pic_1.jpg",Icon(Icons.account_balance_wallet), mPurpleColor )
      ),
    );
  }
}
