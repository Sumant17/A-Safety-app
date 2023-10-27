import 'package:flutter/material.dart';

import 'package:setup/more_features/features/more_features.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MoreFeatures()));
            },
            icon: const Icon(
              Icons.arrow_back,
            )),
        title: const Text("Chat Room"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
    );
  }
}
