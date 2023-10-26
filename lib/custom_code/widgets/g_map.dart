// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:google_maps_widget/google_maps_widget.dart' as GM;

class GMap extends StatefulWidget {
  const GMap({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  final mapsWidgetController = GlobalKey<GM.GoogleMapsWidgetState>();

  @override
  Widget build(BuildContext context) {
    return GM.GoogleMapsWidget(
        apiKey: "AIzaSyDD2ApCiPGgrcx3LjAJ4AJOxOvXXXPw0_4",
        key: mapsWidgetController,
        sourceLatLng: GM.LatLng(
          40.484000837597925,
          -3.369978368282318,
        ),
        destinationLatLng: GM.LatLng(
          40.48017307700204,
          -3.3618026599287987,
        ));
  }
}
