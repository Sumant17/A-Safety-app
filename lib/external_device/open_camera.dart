import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;
  XFile? _imageFile;

  _initCamera() async {
    _cameras = await availableCameras();
    final back = _cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back);
    _cameraController = CameraController(back, ResolutionPreset.max);
    await _cameraController.initialize();
  }

  _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = XFile(pickedFile.path);
      });
      Navigator.of(context).pop();
    }
  }

  _takePicture() async {
    if (!_cameraController.value.isInitialized) {
      return;
    }
    final image = await _cameraController.takePicture();

    setState(() {
      _imageFile = XFile(image.path);
    });
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (_) {
              return Container(
                height: 250,
                width: 600,
                child: Column(
                  children: [
                    Expanded(
                      child: _imageFile == null
                          ? FutureBuilder<void>(
                              future: _initCamera(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return CameraPreview(_cameraController);
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            )
                          : Image.file(
                              File(_imageFile!.path),
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: _getImageFromGallery,
                            child: const Text('Choose from gallery'),
                          ),
                          ElevatedButton(
                            onPressed: _takePicture,
                            child: const Text("Take Picture"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Stack(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
              child: _imageFile == null
                  ? const Icon(
                      Icons.person,
                      size: 60,
                    )
                  : ClipOval(
                      child: Image.file(
                        File(_imageFile!.path),
                        fit: BoxFit.cover,
                        width: 160,
                        height: 160,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
