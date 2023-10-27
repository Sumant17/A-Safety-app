import 'package:flutter/material.dart';
import 'package:setup/register/name_field.dart';
import 'package:permission_handler/permission_handler.dart';

class Permissions extends StatefulWidget {
  const Permissions({super.key});

  @override
  State<Permissions> createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;

  Future<void> _checkLocationPermission() async {
    //permission
    if (await Permission.location.isGranted) {
      return;
    } else {
      await _requestLocationPermission();
    }
  }

  Future<void> _requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Location permission denied');
    }
  }

  Future<void> _checkMicrophonePermission() async {
    //permission
    if (await Permission.microphone.isGranted) {
      return;
    } else {
      await _requestMicrophonePermisssion();
    }
  }

  Future<void> _requestMicrophonePermisssion() async {
    final status = await Permission.microphone.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Microphone permission denied');
    }
  }

  Future<void> _checkCameraPermission() async {
    //permission
    if (await Permission.camera.isGranted) {
      return;
    } else {
      await _requestCameraPermission();
    }
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Camera permission denied');
    }
  }

  Future<void> _checkContactsPermission() async {
    //permission
    if (await Permission.contacts.isGranted) {
      return;
    } else {
      await _requestContactsPermission();
    }
  }

  Future<void> _requestContactsPermission() async {
    final status = await Permission.contacts.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Contacts permission denied');
    }
  }

  Future<void> _checkNotificationPermission() async {
    //permission
    if (await Permission.notification.isGranted) {
      return;
    } else {
      await _requestNotificationPermission();
    }
  }

  Future<void> _requestNotificationPermission() async {
    final status = await Permission.notification.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Notification permission denied');
    }
  }

  Future<void> _checkPhotosPermission() async {
    //permission
    if (await Permission.photos.isGranted) {
      return;
    } else {
      await _requestPhotosPermission();
    }
  }

  Future<void> _requestPhotosPermission() async {
    final status = await Permission.photos.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Photos permission denied');
    }
  }

  Future<void> _checkBluetoothPermission() async {
    //permission
    if (await Permission.bluetoothConnect.isGranted) {
      return;
    } else {
      await _requestBluetoothPermission();
    }
  }

  Future<void> _requestBluetoothPermission() async {
    final status = await Permission.bluetoothConnect.request();
    if (status == PermissionStatus.granted) {
      return;
    } else {
      throw Exception('Bluetooth permission denied');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Permissions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(TextSpan(children: [
                  const TextSpan(
                      text:
                          "Please permit access to the following device services. Press",
                      style: TextStyle(fontSize: 15)),
                  WidgetSpan(
                      child: Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                        color: Colors.black45, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.question_mark,
                      size: 12,
                      color: Colors.white,
                    ),
                  )),
                  const TextSpan(
                      text:
                          "to find out why each permission is being sought Services with red ",
                      style: TextStyle(fontSize: 15)),
                  WidgetSpan(
                      child: Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.question_mark,
                      size: 12,
                      color: Colors.white,
                    ),
                  )),
                  const TextSpan(
                      text:
                          "are required to use even the basic functions of the app. Service with yellow",
                      style: TextStyle(fontSize: 15)),
                  WidgetSpan(
                      child: Container(
                    width: 14,
                    height: 14,
                    decoration: const BoxDecoration(
                        color: Colors.amber, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.question_mark,
                      size: 12,
                      color: Colors.white,
                    ),
                  )),
                  const TextSpan(
                      text: "are required to make app fully functional",
                      style: TextStyle(fontSize: 15))
                ])),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Location"),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected,
                      onChanged: (value) {
                        setState(() {
                          _checkLocationPermission();
                          isSelected = !isSelected;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.mic,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Microphone"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected1,
                      onChanged: (value) {
                        setState(() {
                          _checkMicrophonePermission();
                          isSelected1 = !isSelected1;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Camera"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected2,
                      onChanged: (value) {
                        setState(() {
                          _checkCameraPermission();
                          isSelected2 = !isSelected2;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.contacts,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Contacts"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected3,
                      onChanged: (value) {
                        setState(() {
                          _checkContactsPermission();
                          isSelected3 = !isSelected3;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.notifications,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Notifications"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected4,
                      onChanged: (value) {
                        setState(() {
                          _checkNotificationPermission();
                          isSelected4 = !isSelected4;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.photo_sharp,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Photos"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected5,
                      onChanged: (value) {
                        setState(() {
                          _checkPhotosPermission();
                          isSelected5 = !isSelected5;
                        });
                      })
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.bluetooth,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Bluetooth"),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15)),
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.question_mark,
                          size: 15,
                        ),
                      ),
                      label: const Text("")),
                  const Spacer(
                    flex: 2,
                  ),
                  Switch(
                      value: isSelected6,
                      onChanged: (value) {
                        setState(() {
                          _checkBluetoothPermission();
                          isSelected6 = !isSelected6;
                        });
                      }),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListTile(
                title: const Text(
                  "Required to activate critical functions of Guardon",
                  style: TextStyle(fontSize: 15),
                ),
                leading: Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                ),
              ),
              ListTile(
                title: const Text(
                  "Required to fully activate Guardon",
                  style: TextStyle(fontSize: 15),
                ),
                leading: Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                      color: Colors.amber, shape: BoxShape.circle),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const NameField())));
                },
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
