import 'package:flutter/material.dart';
import 'package:setup/profile_details/multiple_screen/alert_options.dart';
import 'package:setup/profile_details/multiple_screen/contacts.dart';
import 'package:setup/profile_details/single_screen/contact_details.dart';
import 'package:setup/profile_details/single_screen/medical_details.dart';
import 'package:setup/profile_details/single_screen/personal_details.dart';
import 'package:setup/profile_details/single_screen/settings_screen.dart';
import 'package:setup/profile_details/single_screen/wearable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> para = [
    'Trusted Contacts',
    'Trusted Groups',
    'Wearable',
    'Alert Options',
    'Personal Details',
    'Contact Details',
    'Medical Details',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const contacts()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[0]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const ContactDetails()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[1]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Wearable()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const AlertOptions()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[2]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AlertOptions()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[3]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PersonalDetails()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[4]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContactDetails()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[5]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MedicalDetails()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[6]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(para[7]),
                      const Text(
                        '>',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
