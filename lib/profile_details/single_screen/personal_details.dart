import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:setup/profile_details/single_screen/profile_pic.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _middleName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfilePicture(),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _firstName,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                          labelText: 'First Name',
                          hintText: 'xxxxx'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _middleName,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        )),
                        labelText: 'Middle Name(optional)',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _lastName,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        )),
                        labelText: 'Last Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
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
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now());

                        if (pickeddate != null) {
                          setState(() {
                            _dob.text =
                                DateFormat('yyyy-MM-dd').format(pickeddate);
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
