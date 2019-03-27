import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smart_house_application/screens/rooms/widgets/room_card.dart';

class RoomDetail extends StatelessWidget {
  String roomTitle = "";
  String roomDescription = "";
  String roomPicture = "assets/pic_house.jpeg";

  RoomDetail(this.roomTitle, this.roomDescription, this.roomPicture);

  @override
  Widget build(BuildContext context) {

    final boardPicture = Container(
      height: 300.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(roomPicture)
        )
      ),
    );

    final boardTitle = Container(
        padding: EdgeInsets.all(15.0),
        child: Align(
          alignment: Alignment.topLeft,
          child:  Text(
            roomTitle,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w600
            ),
          ),
        )
    );

    final boardDescription = Container(
        padding: EdgeInsets.only(left: 15.0, bottom: 10.0,right: 15.0),
        child: Align(
          alignment: Alignment.topLeft,
          child:  Text(
            roomDescription,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        )
    );


    final cards=Container(
        margin: EdgeInsets.fromLTRB(0, 44, 0, 0),
        color: Colors.blueGrey,
        width: 500.0,
        height: 200.0,

        child: StaggeredGridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),

          children: <Widget>[
            RoomCard(Container(
              color: Colors.black,
              width: 50.0,
              height: 50.0,
              child : Image.asset('assets/icons/luz.png',color: Colors.white,),
            ),'Lights'),

            RoomCard(Container(
              color: Colors.black,
              width: 50.0,
              height: 50.0,
              child : Image.asset('assets/icons/temperatura.png',color: Colors.white,),
            ),'Air condition'),

            RoomCard(Container(
              color: Colors.black,
              width: 50.0,
              height: 50.0,
              child : Image.asset('assets/icons/conexion.png',color: Colors.white,),
            ),'Conection'),

            RoomCard(Container(
              color: Colors.black,
              width: 50.0,
              height: 50.0,
              child : Image.asset('assets/icons/camera.png',color: Colors.white,),
            ),'Security'),

          ],

          staggeredTiles: [
            StaggeredTile.extent(2,200.0),
            StaggeredTile.extent(2,200.0),
            StaggeredTile.extent(2,200.0),
            StaggeredTile.extent(2,200.0),
          ],
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.black87),
        child: Column(
          children: <Widget>[
//            boardTitle,
            boardDescription,
            boardPicture,
            cards,
          ],
        ),
      ),
    );

  }
}
