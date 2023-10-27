import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SafetyCheck extends StatefulWidget {
  const SafetyCheck({super.key});

  @override
  State<SafetyCheck> createState() => _SafetyCheckState();
}

class _SafetyCheckState extends State<SafetyCheck> {
  late CameraPosition _initialCameraPosition;
  late GoogleMapController _mapController;
  late Position _currentPosition = const Position(
      longitude: 0.0,
      latitude: 0.0,
      timestamp: null,
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0);

  late Marker _markers = const Marker(
      markerId: MarkerId('current location'),
      position: LatLng(0.0, 0.0),
      infoWindow: InfoWindow(title: 'Current Location'));

  @override
  void initState() {
    super.initState();
    _initialCameraPosition = const CameraPosition(
      target: LatLng(0.0, 0.0),
      zoom: 15.0,
    );
    _checkLocationPermission();
  }

  Future<void> _checkLocationPermission() async {
    if (await Permission.location.isGranted) {
      _getCurrentLocation();
    } else {
      await _requestLocationPermission();
    }
  }

  Future<void> _requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      _getCurrentLocation();
    } else {
      throw Exception('Location permission denied');
    }
  }

  void _getCurrentLocation() async {
    final currentPosition = await Geolocator.getCurrentPosition();
    final cameraPosition = CameraPosition(
      target: LatLng(currentPosition.latitude, currentPosition.longitude),
      zoom: 15,
    );
    setState(() {
      _currentPosition = currentPosition;
      _initialCameraPosition = cameraPosition;
      _markers = Marker(
          markerId: const MarkerId('current location'),
          position:
              LatLng(_currentPosition.latitude, _currentPosition.longitude),
          infoWindow: const InfoWindow(title: 'current'));
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    setState(() {
      Set<Marker> markers = Set();
      markers.add(_markers);
      _mapController.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(
            _currentPosition.latitude,
            _currentPosition.longitude,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safetycheck'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: {_markers},
        onMapCreated: _onMapCreated,
      ),
    );
  }
}
