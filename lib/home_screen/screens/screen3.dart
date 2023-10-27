import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setup/more_features/SetUp.dart';
import 'package:setup/more_features/features/more_features.dart';
import 'package:setup/safety_alert_raised/home_screen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

// ignore: camel_case_types
class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen1State();
}

// ignore: camel_case_types
class _screen1State extends State<screen3> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return ScreenUtilInit(
        // ignore: prefer_const_constructors
        designSize: Size(393, 851),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              'PROTECTED BY',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            'assets/guardon.png',
                            height: 60,
                            width: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              style:
                                  // ignore: deprecated_member_use
                                  ElevatedButton.styleFrom(
                                      // ignore: deprecated_member_use
                                      primary: Colors.white,
                                      minimumSize: const Size(170, 60),
                                      side: const BorderSide(
                                          color: Colors.black12, width: 0.9)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) =>
                                        const MoreFeatures())));
                              },
                              icon: const Icon(
                                Icons.widgets_outlined,
                                color: Colors.blue,
                              ),
                              label: const Text(
                                "More Features",
                                style: TextStyle(color: Colors.blue),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton.icon(
                              style:
                                  // ignore: deprecated_member_use
                                  ElevatedButton.styleFrom(
                                      // ignore: deprecated_member_use
                                      primary: Colors.white,
                                      minimumSize: const Size(180, 60),
                                      side: const BorderSide(
                                          color: Colors.black12, width: 0.9)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => const SetUp())));
                              },
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.blue,
                              ),
                              label: const Text(
                                "Setup",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.shield,
                                    size: 45,
                                    color: Colors.blue,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Safety Alert",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.sp),
                                    ),
                                    Text(
                                      "Swipe if you are in danger",
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15.sp),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 75, left: 20, right: 20),
                            child: SwipeableButtonView(
                              buttonColor: Colors.blue,
                              onWaitingProcess: () {
                                Future.delayed(const Duration(seconds: 2), () {
                                  setState(() {
                                    isFinished = true;
                                  });
                                });
                              },
                              buttonText: "Swipe for Alert",
                              buttontextstyle: TextStyle(
                                  fontSize: 16.sp, color: Colors.white),
                              buttonWidget: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              activeColor:
                                  const Color.fromARGB(255, 180, 215, 245),
                              isFinished: isFinished,
                              onFinish: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Alert!'),
                                        content: const Text(
                                            'Alert Raised Successsfully'),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('No')),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: ((context) =>
                                                            const AlertRaised())));
                                              },
                                              child: const Text('Yes'))
                                        ],
                                      );
                                    });
                                setState(() {
                                  isFinished = false;
                                });
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50.h, left: 315.w),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side:
                                        const BorderSide(color: Colors.black12),
                                    // ignore: deprecated_member_use
                                    primary: Colors.white,
                                    minimumSize: const Size(69, 79),
                                    shape: const CircleBorder()),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.shield,
                                  color: Colors.blue,
                                  size: 35,
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 62,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.heart_broken,
                                size: 45,
                                color: Colors.red,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Medical Alert",
                                  style: TextStyle(
                                      fontSize: 20.sp, color: Colors.black),
                                ),
                                Text(
                                  "Swipe if you need help",
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.black38),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SwipeableButtonView(
                          buttonColor: Colors.red,
                          onWaitingProcess: () {
                            Future.delayed(const Duration(seconds: 2), () {
                              setState(() {
                                isFinished = true;
                              });
                            });
                          },
                          buttonText: "Swipe for Alert",
                          buttontextstyle:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                          buttonWidget: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          activeColor: const Color.fromARGB(255, 237, 191, 188),
                          isFinished: isFinished,
                          onFinish: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Alert!'),
                                    content: const Text(
                                        'Alert Raised Successsfully'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('No')),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        const AlertRaised())));
                                          },
                                          child: const Text('Yes'))
                                    ],
                                  );
                                });
                            setState(() {
                              isFinished = false;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
