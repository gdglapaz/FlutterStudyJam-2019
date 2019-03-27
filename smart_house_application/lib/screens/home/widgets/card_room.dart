import 'package:flutter/material.dart';
import 'package:smart_house_application/screens/rooms/room_detail.dart';

class CardRoom extends StatelessWidget {
  double paddingSize = 10.0;
  String pathImage = "";
  String titleCard = "";

  CardRoom(this.pathImage, this.titleCard);

  @override
  Widget build(BuildContext context) {
    final cardTitle = Text(
      titleCard,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.w500
      ),
    );

    final cardArrowFab = Positioned(
      bottom: paddingSize,
      right: paddingSize,
      child: FloatingActionButton(
        heroTag: "fab1_$titleCard",
        backgroundColor: Colors.black38,
        onPressed: (){
            Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => RoomDetail(titleCard, "In this room there are a lot of things that help to you to cook some amazing things!!!", pathImage)),
            );
        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );

    final cardLightFab = Positioned(
      top: paddingSize,
      right: paddingSize,
      child: FloatingActionButton(
        heroTag: "fab2_$titleCard",
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.lightbulb_outline,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    );

    final cardContainer = Container(
        height: 200.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(pathImage),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75)
              )
            ]
        )
    );

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Stack(
        children: <Widget>[
          cardContainer,
          Positioned(
            bottom: paddingSize*2,
            left: paddingSize*2,
            child: cardTitle,
          ),
          cardArrowFab,
          cardLightFab
        ],
      )
    );
  }
}