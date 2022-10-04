import 'package:find_a_coop/utils/log_utils.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationButton extends StatefulWidget {
  const LocationButton({super.key});

  @override
  State<LocationButton> createState() => _LocationButtonState();
}

class _LocationButtonState extends State<LocationButton> {
  LocationPermission locationPermission = LocationPermission.unableToDetermine;

  @override
  void initState() {
    super.initState();
    checkLocationPermission();
  }

  Future<void> checkLocationPermission() async {
    final locationPermission = await Geolocator.checkPermission();
    setLocationPermissionState(locationPermission);
  }

  void setLocationPermissionState(LocationPermission locationPermissionNew) {
    setState(() {
      locationPermission = locationPermissionNew;
    });
  }

  IconData getIcon() {
    if (locationPermission == LocationPermission.always || locationPermission == LocationPermission.whileInUse) {
      return Icons.gps_fixed;
    } else if (locationPermission == LocationPermission.unableToDetermine) {
      return Icons.gps_not_fixed;
    } else {
      return Icons.gps_off;
    }
  }

  Future<void> _onPressed() async {
    if (locationPermission == LocationPermission.unableToDetermine) {
      final locationPermission = await Geolocator.requestPermission();
      logInfo('Got location permission: $locationPermission');
      setLocationPermissionState(locationPermission);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _onPressed,
      icon: Icon(getIcon()),
    );
  }
}
