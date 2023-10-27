import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:setup/register/completion.dart';
import 'package:setup/register/gender.field.dart';

class DatOfBirth extends StatefulWidget {
  const DatOfBirth({super.key});

  @override
  State<DatOfBirth> createState() => _DatOfBirthState();
}

class _DatOfBirthState extends State<DatOfBirth> {
  final TextEditingController _dob = TextEditingController();

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
                  'Your Date of Birth',
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
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now());

                  if (pickeddate != null) {
                    setState(() {
                      _dob.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                    });
                  }
                },
                child: IgnorePointer(
                  child: TextFormField(
                    controller: _dob,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      labelText: 'Date_of_Birth',
                    ),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Please select dob';
                    //   }
                    //   return null;
                    // }
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Gender())));
                    },
                    child: const Text('Back'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Complete())));
                    },
                    child: const Text('Next'),
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
