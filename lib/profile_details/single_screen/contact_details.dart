import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final TextEditingController _phNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: _phNumber,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Phone Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
