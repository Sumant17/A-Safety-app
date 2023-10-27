import 'package:flutter/material.dart';
import 'package:setup/profile_details/multiple_screen/alert_cancellation.dart';
import 'package:setup/profile_details/multiple_screen/alert_volunteer.dart';

class AlertOptions extends StatefulWidget {
  const AlertOptions({super.key});

  @override
  State<AlertOptions> createState() => _AlertOptionsState();
}

class _AlertOptionsState extends State<AlertOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alert Options',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const AlertCodes())));
            },
            child: Card(
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Alert cancellation Codes',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Set you True and Duress Codes to cancel safety alerts.',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 28),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Volunteer()));
            },
            child: Card(
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Volunteer',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Help other guardOn users.',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 28),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Card(
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Responders',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Select whom to notify when you raise alert',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 28),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
