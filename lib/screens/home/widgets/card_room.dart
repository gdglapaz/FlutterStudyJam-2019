import 'package:flutter/material.dart';

class CardRoom extends StatelessWidget {
  double paddingSize = 10.0;
  
  @override
  Widget build(BuildContext context) {
    final cardTitle = Text(
      "Hello!!!",
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
        backgroundColor: Colors.black38,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    );

    final cardLightFab = Positioned(
      top: paddingSize,
      right: paddingSize,
      child: FloatingActionButton(
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
                image: AssetImage('assets/images/pic_house.jpg'),
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