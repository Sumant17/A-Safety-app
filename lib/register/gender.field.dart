import 'package:flutter/material.dart';
import 'package:setup/register/dob_field.dart';
import 'package:setup/register/profile_field.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String dropdownValue = 'Male';
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
                'Your Gender',
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
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: DropdownButtonFormField(
                hint: const Text('Gender'),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                value: dropdownValue,
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 15),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 390,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Profile())));
                  },
                  child: const Text('Back'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const DatOfBirth())));
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
