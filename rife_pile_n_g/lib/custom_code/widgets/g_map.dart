// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
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
  final GlobalKey<GM.GoogleMapsWidgetState> mapsWidgetController =
      GlobalKey<GM.GoogleMapsWidgetState>();

  @override
  Widget build(BuildContext context) {
    return GM.GoogleMapsWidget(
      apiKey: "YOUR_GOOGLE_MAPS_API_KEY_HERE",
      key: mapsWidgetController,
      sourceLatLng: GM.LatLng(
        40.484000837597925,
        -3.369978368282318,
      ),
      destinationLatLng: GM.LatLng(
        40.48017307700204,
        -3.3618026599287987,
      ),
    );
  }
}
