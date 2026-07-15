import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // 1. Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  // 2. Check current permission status.
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    // Prompt the user for permission.
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied.');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    return Future.error('Location permissions are permanently denied.');
  } 

  // 3. Fetch and return the current position.
  return await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
    ),
  );
}

void getUserCoordinates() async {
  try {
    Position position = await _determinePosition();
    
    double latitude = position.latitude;
    double longitude = position.longitude;
    
    print('Latitude: $latitude');
    print('Longitude: $longitude');
  } catch (e) {
    print('Error getting location: $e');
  }
}

