import 'package:flutter/material.dart';

class AlertCodes extends StatefulWidget {
  const AlertCodes({super.key});

  @override
  State<AlertCodes> createState() => _AlertCodesState();
}

class _AlertCodesState extends State<AlertCodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Cancellation Codes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: ((context) => const AlertCodes())));
            },
            child: Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'True Code',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Use your True Code to truly cancel an alert you raised by mistake,or after the threat to your safety has truly disappeared.',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
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
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => const Volunteer()));
            },
            child: Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Duress Code',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Use your Duress Code to fake cacellation of a safety alert when you are being forced by the perpetrator to cancel the alert. ',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
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
