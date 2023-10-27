import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:setup/home_screen/screens/check_in_tabs/add%20check%20in/message.dart';
import 'package:setup/safety_alert_raised/camera_page.dart';
import 'package:setup/safety_alert_raised/home_screen.dart';
import 'package:setup/safety_alert_raised/recorder_home_view.dart';

class AddCheckIn extends StatefulWidget {
  const AddCheckIn({super.key});

  @override
  State<AddCheckIn> createState() => _AddCheckInState();
}

class _AddCheckInState extends State<AddCheckIn> {
  final TextEditingController _message = TextEditingController();
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
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            markers: {_markers},
            onMapCreated: _onMapCreated,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.2, color: Colors.black),
              ),
              height: 230,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.location_searching_sharp),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                            '#215/3,Nazar Camp,Omkar Nagar,Vadagoan,Belagavi,Karnataka 590005,India'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Share my location with:',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: ((context) => const Scanner())));
                        },
                        child: Container(
                          height: 85,
                          width: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 1.5),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.handshake),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '0/0',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Trusted Contact',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: ((context) => const Scanner())));
                        },
                        child: Container(
                          height: 85,
                          width: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 1.5),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 10,
                                ),
                                Icon(Icons.speaker_group_sharp),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '0/0',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Trusted Groups',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Container(
                                      height: 250,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextField(
                                            minLines: 6,
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: null,
                                            controller: _message,
                                            decoration: const InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,
                                              labelText:
                                                  'Enter your check-in message',
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                        return const RecorderHomeView(
                                                          title:
                                                              'Record your voice',
                                                        );
                                                      }),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                    ),
                                                    child: const Icon(
                                                      Icons.volume_down,
                                                      color: Colors.black,
                                                      size: 35,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                        return const CameraPage();
                                                      }),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                    ),
                                                    child: const Icon(
                                                      Icons.video_call,
                                                      color: Colors.black,
                                                      size: 35,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    height: 50,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                    ),
                                                    child: const Icon(
                                                      Icons.camera_enhance,
                                                      color: Colors.black,
                                                      size: 35,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  height: 50,
                                                  width: 93,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child: const Icon(
                                                    Icons.photo,
                                                    color: Colors.black,
                                                    size: 35,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Back'),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: ((context) =>
                                                            const CheckInPage())));
                                              },
                                              child: const Text('Check-in')),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: const Text('Message')),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const CheckInPage())));
                        },
                        child: const Text('Check-in'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
