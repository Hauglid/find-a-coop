import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StoreMap extends StatefulWidget {
  const StoreMap({
    required this.latitude,
    required this.longitude,
    this.zoom = 15,
    this.tilt = 0,
    super.key,
  });

  final double latitude;
  final double longitude;
  final double tilt;
  final double zoom;

  @override
  State<StoreMap> createState() => _StoreMapState();
}

class _StoreMapState extends State<StoreMap> {
  Set<Marker> markers = {};

  CameraPosition get initialCameraPosition => CameraPosition(
        target: latlng,
        zoom: widget.zoom,
        tilt: widget.tilt,
      );

  LatLng get latlng => LatLng(widget.latitude, widget.longitude);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: GoogleMap(
        markers: markers,
        initialCameraPosition: initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        compassEnabled: false,
      ),
    );
  }
}
