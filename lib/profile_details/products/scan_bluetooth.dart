import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';
import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanning...'),
      ),
      body: RippleAnimation(
        key: UniqueKey(),
        repeat: true,
        duration: const Duration(milliseconds: 2300),
        ripplesCount: 5,
        color: Colors.blue,
        minRadius: 150,
        child: Center(
          child: ClipRRect(
            child: Image.asset(
              'assets/phone1.png',
              fit: BoxFit.cover,
              width: 63,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
