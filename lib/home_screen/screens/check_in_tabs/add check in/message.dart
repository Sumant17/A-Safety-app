import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/check_in_tabs/add%20check%20in/add_check_in_tab.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset(
              'assets/location.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'You have checked-in!',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const AddCheckIn())));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Ok',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
