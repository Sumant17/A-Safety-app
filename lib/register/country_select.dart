import 'package:flutter/material.dart';
import 'package:setup/login_auth/login_screen.dart';
import 'package:setup/register/permissions.dart';

class SetupRegister extends StatefulWidget {
  const SetupRegister({super.key});

  @override
  _SetupRegister createState() => _SetupRegister();
}

class _SetupRegister extends State<SetupRegister> {
  String selectedCountry = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Country"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.search)),
                controller: TextEditingController(text: selectedCountry),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCountry = "India";
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Flag_of_India.png",
                          height: 35,
                        ),
                        const SizedBox(height: 8),
                        const Text("India"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCountry = "British Indian Ocean territory";
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Flag_of_the_United_Kingdom.png",
                          height: 35,
                        ),
                        const SizedBox(height: 8),
                        const Text("British Indian Ocean territory"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 121),
              selectedCountry.isNotEmpty
                  ? Text("Selected Country: $selectedCountry")
                  : Container(),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: selectedCountry.isNotEmpty
                      ? () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Permissions(),
                            ),
                          );
                        }
                      : null,
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
