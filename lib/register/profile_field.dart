import 'package:flutter/material.dart';
import 'package:setup/external_device/open_camera.dart';
import 'package:setup/register/gender.field.dart';
import 'package:setup/register/name_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Photo',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.question_mark,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    'Click the photo.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'Give us your best smile :)',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const ProfilePicture(),
                  const SizedBox(
                    height: 290,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => const NameField())));
                          },
                          child: const Text('Back'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => const Gender())));
                          },
                          child: const Text('Next'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
