import 'package:flutter/material.dart';
import 'package:smart_house_application/screens/home/widgets/card_room.dart';

class ListCardRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          CardRoom(),
          CardRoom(),
          CardRoom(),
          CardRoom(),
        ],
    );
  }
}
