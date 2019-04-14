import 'package:flutter/material.dart';
import 'Colegio.dart';
import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:studyjam4/school_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('GDG LaPaz'),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context,snapShot){
            Map data = snapShot.data;

            if(snapShot.data==null){
              return Container(
                child: CircularProgressIndicator(),
              );
            }
            else if(snapShot.hasData){
              return Container(
                child: ListView.builder(
                  itemCount: 5,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return SchoolDetail(mSchoolName: data['features'][index]['properties']['UNIDAD_EDU'], mLat: data['features'][index]['properties']['latitud'], mLon: data['features'][index]['properties']['longitud']);
                          }));
                        },
                        child: Column(
                          children: <Widget>[
                            Padding (
                              padding: EdgeInsets.all(8.0),

                            ),
                            Colegio(
                                '${data['features'][index]['properties']['UNIDAD_EDU']}',
                                'Centro',
                                'Sopocahi'
                            ),

                          ],
                        ),
                      );
                    }
                ),
              );
            }

          }
      )

    );
  }
}


Future<Map>getData()async{
  String url = 'https://datos.gob.bo/dataset/a1ab65be-4160-494f-8eea-dddb1a04287d/resource/62a9416b-00af-446c-8606-3062c0bbd503/download/me_establecimientos_educativos2016.geojson';
  http.Response response = await http.get(url);
  return json.decode(response.body);
}