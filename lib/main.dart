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
        body: CardRoom()
      ),

    )
  );
}

class CardRoom extends StatelessWidget {
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
      bottom: 10.0,
      right: 10.0,
      child: FloatingActionButton(
        backgroundColor: Colors.black38,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );

    final cardLightFab = Positioned(
      top: 10.0,
      right: 10.0,
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.lightbulb_outline,
          color: Colors.white,
        ),
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


    return Stack(
      children: <Widget>[
        cardContainer,
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: cardTitle,
        ),
        cardArrowFab,
        cardLightFab
      ],
    );
  }
}
