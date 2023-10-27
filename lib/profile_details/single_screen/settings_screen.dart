import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = true;
  int _value1 = 1;
  int _value2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Beep with Distress Alert',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Switch(
                value: isSwitched1,
                onChanged: ((value) {
                  setState(() {
                    isSwitched1 = value;
                  });
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Double beep when any Alert is cancelled',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Switch(
                value: isSwitched2,
                onChanged: ((value) {
                  setState(() {
                    isSwitched2 = value;
                  });
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Maximum Video Length(minutes)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                child: Slider(
                  value: _value1.toDouble(),
                  min: 1,
                  max: 10,
                  onChanged: (double newValue) {
                    setState(() {
                      _value1 = newValue.round();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  _value1.toString(),
                  style: const TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Maximum Audio Length(minutes)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                child: Slider(
                  value: _value2.toDouble(),
                  min: 1,
                  max: 10,
                  onChanged: (double newValue) {
                    setState(() {
                      _value2 = newValue.round();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  _value2.toString(),
                  style: const TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Call emergency hotline number in my country',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                child: Switch(
                  value: isSwitched3,
                  onChanged: ((value) {
                    setState(() {
                      isSwitched3 = value;
                    });
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
