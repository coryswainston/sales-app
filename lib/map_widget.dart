import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapWidget extends StatefulWidget {
  @override
  MapState createState() {
    return MapState();
  }
}

class MapState extends State<MapWidget> {
  GoogleMapController mapController;
  LatLng _center = LatLng(42.6, -72.1);

  @override
  void initState() {
    super.initState();
    new Location().getLocation().then((loc) {
      mapController?.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(loc.latitude, loc.longitude),
        zoom: 15.0
      )));
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        zoom: 15.0,
        target: _center,
      ),
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      mapType: MapType.hybrid,
    );
  }
}
