import 'package:flutter/material.dart';
import 'package:setup/more_features/features/more_features.dart';

class VehicleAlert extends StatefulWidget {
  const VehicleAlert({super.key});

  @override
  State<VehicleAlert> createState() => _VehicleAlertState();
}

class _VehicleAlertState extends State<VehicleAlert> {
  bool isTapped1 = false;
  bool isTapped2 = false;
  bool isTapped3 = false;
  bool isTapped4 = false;
  bool isTapped5 = false;
  bool isTapped6 = false;
  bool isTapped7 = false;
  bool isTapped8 = false;
  Color containerColor1 = Colors.blue;
  Color containerColor2 = Colors.blue;
  Color containerColor3 = Colors.blue;
  Color containerColor4 = Colors.blue;
  Color containerColor5 = Colors.blue;
  Color containerColor6 = Colors.blue;
  Color containerColor7 = Colors.blue;
  Color containerColor8 = Colors.blue;

  // void toggleColor() {
  //   setState(() {
  //     isTapped = !isTapped;
  //     containerColor = isTapped ? Colors.yellow : Colors.blue;
  //   });
  // }

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
        title: const Text("Roadside Assistance"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Please select breakdown type",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped1 = !isTapped1;
                      containerColor1 = isTapped1 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor1,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.car_crash,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped2 = !isTapped2;
                      containerColor2 = isTapped2 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor2,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.local_gas_station,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped3 = !isTapped3;
                      containerColor3 = isTapped3 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor3,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.battery_charging_full,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped4 = !isTapped4;
                      containerColor4 = isTapped4 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor4,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.car_crash,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped5 = !isTapped5;
                      containerColor5 = isTapped5 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor5,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.car_crash,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped6 = !isTapped6;
                      containerColor6 = isTapped6 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor6,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.car_crash,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Select responders",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped7 = !isTapped7;
                      containerColor7 = isTapped7 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor7,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.handshake,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapped8 = !isTapped8;
                      containerColor8 = isTapped8 ? Colors.yellow : Colors.blue;
                    });
                  },
                  child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: containerColor8,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 25),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 55),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: const BorderSide(color: Colors.blue)),
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.blue),
                    )),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 55),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: const BorderSide(color: Colors.blue)),
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
