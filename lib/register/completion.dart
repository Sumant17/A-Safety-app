import 'package:flutter/material.dart';
import 'package:setup/home_screen/bottom_bart.dart';

class Complete extends StatelessWidget {
  const Complete({super.key});

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
              'assets/tick.png',
              color: Colors.white,
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Quick Setup complete!',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Now lets ensure your safety',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const BottomBar())));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Continue',
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
