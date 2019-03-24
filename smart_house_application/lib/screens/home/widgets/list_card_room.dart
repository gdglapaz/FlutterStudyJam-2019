import 'package:flutter/material.dart';
import 'package:smart_house_application/screens/home/widgets/card_room.dart';

class ListCardRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          CardRoom("assets/images/pic_house.jpg", "Room 1"),
          CardRoom("assets/images/pic_house2.jpeg", "Room 2"),
          CardRoom("assets/images/pic_house3.jpeg", "Room 3"),
          CardRoom("assets/images/pic_house4.jpeg", "Room 4"),
        ],
    );
  }
}
