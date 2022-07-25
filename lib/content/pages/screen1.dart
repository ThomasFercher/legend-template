import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:legend_design_core/layout/appBar.dart/appbar_config.dart';
import 'package:legend_design_core/layout/appBar.dart/layout/appbar_layout.dart';
import 'package:legend_design_core/layout/appBar.dart/legend_appbar.dart';
import 'package:legend_design_core/layout/scaffold/routebody/legend_route_body.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';
import 'package:legend_design_widgets/scrolling/scene/legend_scene.dart';
import 'package:legend_design_widgets/scrolling/scene/scene_item.dart';
import 'package:legend_utils/legend_utils.dart';

const LocationSettings locationSettings = LocationSettings(
  accuracy: LocationAccuracy.high,
);

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Completer<GoogleMapController> _controller = Completer();

  late final LatLng userPosition;

  @override
  void initState() async {
    userPosition = await _getUserLocation();
    super.initState();
  }

  Future<LatLng> _getUserLocation() async {
    var position = await GeolocatorPlatform.instance
        .getCurrentPosition(locationSettings: locationSettings);

    return LatLng(position.latitude, position.longitude);
  }

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();

    double size = 96;

    return LegendRouteBody(
      singlePage: true,
      disableContentDecoration: true,
      builder: (c, s) {
        return Container(
          height: s.height,
          child: GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: userPosition.asCameraPosition(),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            //  polygons: ,
          ),
        );
      },
    );
  }
}

extension MapsUtilities on LatLng {
  CameraPosition asCameraPosition() => CameraPosition(target: this);
}
