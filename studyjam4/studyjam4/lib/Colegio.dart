import 'package:flutter/material.dart';


class Colegio extends StatelessWidget{
  String nombre, direccion,zona;
  Colegio(this.nombre, this.direccion,this.zona); //double lat,long;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Text(nombre),
          Text(direccion),
          Text(zona),

        ],
      ),
    );
  }


}