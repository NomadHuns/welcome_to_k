import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteDetailGoogleMap extends StatefulWidget {
  const RouteDetailGoogleMap({super.key});

  @override
  State<RouteDetailGoogleMap> createState() => _RouteDetailGoogleMapState();
}

class _RouteDetailGoogleMapState extends State<RouteDetailGoogleMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  List<Marker> _markers = [
    Marker(
        markerId: MarkerId("1"),
        draggable: true,
        onTap: () => print("Marker!"),
        position: LatLng(37.42796133580664, -122.085749655962),
        icon: BitmapDescriptor.defaultMarkerWithHue(10)),
  ];

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      mapToolbarEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: Set.from(_markers),
    );
  }
}
