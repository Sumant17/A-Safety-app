import 'package:flutter/material.dart';
import 'package:setup/more_features/features/connect.dart';
import 'package:setup/more_features/features/locate_friends.dart';
import 'package:setup/more_features/features/vehicle_alert.dart';

class MoreFeatures extends StatefulWidget {
  const MoreFeatures({super.key});

  @override
  State<MoreFeatures> createState() => _MoreFeaturesState();
}

class _MoreFeaturesState extends State<MoreFeatures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More Features"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 156, 193, 223),
                  borderRadius: BorderRadius.circular(5)),
              child: ExpansionTile(
                initiallyExpanded: false,
                title: TextButton(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleAlert()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Text(
                        "Vehicle Alert",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    )),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VehicleAlert()));
                      },
                      icon: const Icon(Icons.car_crash)),
                ),
                trailing: const Icon(Icons.info_outline),
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                        "Get help from your loved ones and people nearby if your vehicle braks down on the road."),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 156, 193, 223),
                  borderRadius: BorderRadius.circular(5)),
              child: ExpansionTile(
                initiallyExpanded: false,
                title: TextButton(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Connect()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 100),
                      child: Text(
                        "Connect",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    )),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connect()));
                      },
                      icon: const Icon(Icons.message)),
                ),
                trailing: const Icon(Icons.info_outline),
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                        "A safe communication channel for Trusted Groups."),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 156, 193, 223),
                  borderRadius: BorderRadius.circular(5)),
              child: ExpansionTile(
                initiallyExpanded: false,
                title: TextButton(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LocateFriends()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "Locate Friends",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    )),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LocateFriends()));
                      },
                      icon: const Icon(Icons.person)),
                ),
                trailing: const Icon(Icons.info_outline),
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                        "See where your loved ones are now to determine if they're safe."),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
