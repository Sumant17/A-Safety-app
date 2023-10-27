import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HistoryDetails extends StatefulWidget {
  const HistoryDetails({super.key});

  @override
  State<HistoryDetails> createState() => _HistoryDetailsState();
}

class _HistoryDetailsState extends State<HistoryDetails> {
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
      // ignore: prefer_collection_literals
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
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Text('Check-in details'),
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _initialCameraPosition,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              markers: {_markers},
              onMapCreated: _onMapCreated,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 180),
                      child: Row(
                        children: [
                          Text(
                            "Sanket Panchal",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.red,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Senior boys hostel bvb backgate",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "May 25 2023 10:42 am",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        thickness: 2,
                        color: Colors.black26,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "RECIPIENTS",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.handshake),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "0 Trusted Contacts",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210, left: 20),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.person_outlined,
                  size: 80,
                ),
              ),
            )
          ],
        ));
  }
}
