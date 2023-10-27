import 'package:flutter/material.dart';
import 'package:setup/register/permissions.dart';
import 'package:setup/register/profile_field.dart';

class NameField extends StatefulWidget {
  const NameField({super.key});

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _middleName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
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
                  'Your Name',
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
            // const SizedBox(
            //   height: 5,
            // ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Enter your first,middle and last name in respective fields',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _firstName,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'First Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _middleName,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Middle Name(optional)',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _lastName,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Last Name',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Permissions())));
                    },
                    child: const Text('Back'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Profile())));
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
