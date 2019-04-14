import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SchoolDetail extends StatefulWidget {
  final String mSchoolName;
  final double mLat;
  final double mLon;

  const SchoolDetail({Key key, this.mSchoolName, this.mLat, this.mLon}): super(key: key);

  @override
  State<SchoolDetail> createState() => MapSampleState();
}

class MapSampleState extends State<SchoolDetail> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
    final MarkerId markerId = MarkerId('1');

    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(
        widget.mLat,
        widget.mLon,
      ),
      infoWindow: InfoWindow(title: widget.mSchoolName, snippet: '*'),
    );

    markers[markerId] = marker;

    CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(widget.mLat, widget.mLon),
      zoom: 14.4746,
    );

    CameraPosition _kLake = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(37.43296265331129, -122.08832357078792),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);

    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(markers.values),
      ),
    );
  }
}