import 'package:flutter/material.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({super.key});

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  bool _showCheckBoxSafety = false;
  bool _showCheckBoxMedical = false;
  bool _isCheckedSafety = false;
  bool _isCheckMedical = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volunteer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: const Text('Safety Alerts'),
            subtitle: const Text(
                'Select your safety skills to let us know how you can help someone in safety distress'),
            trailing: Switch(
              value: _showCheckBoxSafety,
              onChanged: (value) {
                setState(() {
                  _showCheckBoxSafety = value;
                });
              },
            ),
          ),
          _showCheckBoxSafety
              ? Column(
                  children: [
                    CheckboxListTile(
                      title: const Text('Fire & Rescue'),
                      value: _isCheckedSafety,
                      onChanged: (value) {
                        setState(() {
                          _isCheckedSafety = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Police'),
                      value: _isCheckedSafety,
                      onChanged: (value) {
                        setState(() {
                          _isCheckedSafety = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Trained in self-defence'),
                      value: _isCheckedSafety,
                      onChanged: (value) {
                        setState(() {
                          _isCheckedSafety = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Trained in firearms'),
                      value: _isCheckedSafety,
                      onChanged: (value) {
                        setState(() {
                          _isCheckedSafety = value!;
                        });
                      },
                    ),
                  ],
                )
              : Container(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: const Text('Medical Alerts'),
            subtitle: const Text(
                'Select your medical skills to let us know how you can help someone in medical distress'),
            trailing: Switch(
              value: _showCheckBoxMedical,
              onChanged: (value) {
                setState(() {
                  _showCheckBoxMedical = value;
                });
              },
            ),
          ),
          _showCheckBoxMedical
              ? Column(
                  children: [
                    CheckboxListTile(
                      title: const Text('Medical Doctor'),
                      value: _isCheckMedical,
                      onChanged: (value) {
                        setState(() {
                          _isCheckMedical = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Medical First Responder'),
                      value: _isCheckMedical,
                      onChanged: (value) {
                        setState(() {
                          _isCheckMedical = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Nurse'),
                      value: _isCheckMedical,
                      onChanged: (value) {
                        setState(() {
                          _isCheckMedical = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text('Trained in CPR'),
                      value: _isCheckMedical,
                      onChanged: (value) {
                        setState(() {
                          _isCheckMedical = value!;
                        });
                      },
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
