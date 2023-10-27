import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SCreen4 extends StatefulWidget {
  const SCreen4({super.key});

  @override
  State<SCreen4> createState() => _SCreen4State();
}

class _SCreen4State extends State<SCreen4> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                Image.asset(
                                  'assets/Alert.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const Text('Alert!')
                              ],
                            ),
                            content: const TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('Cancel')),
                              TextButton(
                                  onPressed: () {}, child: const Text('Ok'))
                            ],
                          );
                        });
                  })),
          SwipeableButtonView(
            onWaitingProcess: () {
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  isFinished = true;
                });
              });
            },
            buttonText: "Swipe for Alert",
            buttonWidget: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.deepOrange,
            ),
            activeColor: Colors.blue,
            isFinished: isFinished,
            onFinish: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alert!'),
                      content: const Text('Alert Raised Successsfully'),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text('No')),
                        TextButton(onPressed: () {}, child: const Text('Yes'))
                      ],
                    );
                  });
              setState(() {
                isFinished = false;
              });
            },
          )
        ],
      )),
    );
  }
}
