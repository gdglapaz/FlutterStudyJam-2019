import 'package:flutter/material.dart';
final _borderRadius = BorderRadius.circular(24.0);

class RoomCard extends StatelessWidget {
  Widget wid;
  String heading;
  RoomCard(this.wid, this.heading);

  bool _value1S = false;
  double _valueS1 = 0.0;

  void _onChanged1(bool value){
    _value1S=value;
  }

  void _setvalueS1(double value){
    _valueS1=value;
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.black,
      elevation: 14.0,
      borderRadius: _borderRadius,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ///switch
                      Padding(
                        padding: const EdgeInsets.fromLTRB(120, 4, 0, 0),
                        child: Switch(
                          value: _value1S,
                          onChanged: _onChanged1,
                          activeColor: Colors.white,
                        ),
                      ),

                      Material(
                          color: Colors.black,
                          borderRadius:  _borderRadius,
                          child:Column(
                            children: <Widget>[
                              Text(heading,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: wid,
                              ),
                            ],
                          )
                      ),
                    ],
                  ),

                  Center(
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'Value: ${(_valueS1* 100).round()}',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        new Slider(
                            value: _valueS1,
                            onChanged: _setvalueS1,
                            inactiveColor: Colors.white,
                            activeColor: Colors.yellowAccent
                        )
                      ],
                    ),
                  )

                ],

              )
            ],
          ),
        ),
      ),

    );
  }
}