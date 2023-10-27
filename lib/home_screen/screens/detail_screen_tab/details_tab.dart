import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sanket C Panchal",
            style: TextStyle(fontSize: 20),
          ),
          const Text("Male"),
          const Text("22 years"),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.access_time_rounded),
                  Text("19 Apr 2023"),
                  Text("10:40 am"),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(Icons.people_alt),
                  Text("0"),
                  Text("responders")
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Icon(Icons.shield),
                  Text("Safety Alert"),
                  Text("Cancelled"),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(Icons.search),
                  Text("1"),
                  Text("evidence")
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Icon(Icons.location_on),
                  Text("302 km"),
                  Text("away"),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(Icons.card_giftcard),
                  Text("0 \$"),
                  Text("rewards")
                ],
              )
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.people),
                            Text("Abduction of Women")
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [Icon(Icons.people), Text("Robbery")],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [Icon(Icons.people), Text("Kidnapping")],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [Icon(Icons.people), Text("Home Invasion")],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [Icon(Icons.people), Text("Fire")],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [Icon(Icons.people), Text("Injury")],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
