import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../Login/AuthStorage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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

Future<void> getUserCoordinates() async {
  try {

    Position position = await _determinePosition();
    double latitude = position.latitude;
    double longitude = position.longitude;

    print("Longitude: $longitude Latitude: $latitude");
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String? locationName = prefs.getString("temp");

    final url = Uri.parse('http://192.168.254.104:8080/api/geofence');
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "userLong": longitude,
        "userLat": latitude,
        "locationName": locationName
      }),
    );
    
    String test = response.body;
    print(locationName);
    print('GeoFence: $test');
  } catch (e) {
    print('Error getting location: $e');
  }
}

