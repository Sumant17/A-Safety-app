import 'package:flutter/material.dart';
import 'package:setup/profile_details/multiple_screen/alert_cancellation.dart';
import 'package:setup/profile_details/single_screen/wearable.dart';

class SetUp extends StatefulWidget {
  const SetUp({super.key});

  @override
  SetUpState createState() => SetUpState();
}

class SetUpState extends State<SetUp> {
  late bool _isExpanded1 = false;
  late bool _isExpanded2 = false;
  late bool _isExpanded3 = false;
  late bool _isExpanded4 = false;
  late bool _isExpanded5 = false;
  late bool _isExpanded6 = false;
  late bool _isExpanded7 = false;
  late bool _isExpanded8 = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetUp'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: const Text(
                '50.0%',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 80,
                width: 380,
                //color: Colors.white,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.handshake,
                      color: Colors.red,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text('Add Trusted Contacts',
                          style: TextStyle(color: Colors.red, fontSize: 22)),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded1,
                      color: Colors.red,
                      expandedColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded1 = !_isExpanded1;
                        });
                      },
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isExpanded1,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Add your family, friends, neighbors and colleagues, so they get informed quickly if you ar ever in distress.'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 80,
                width: 380,
                //color: Colors.white,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.handshake,
                      color: Colors.red,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text('Approve trusted contacts',
                          style: TextStyle(color: Colors.red, fontSize: 22)),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded2,
                      color: Colors.red,
                      expandedColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded2 = !_isExpanded2;
                        });
                      },
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isExpanded2,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Become a trusted contact of your family, friends, neighbors and colleagues, by approving their request so you get informed quickly if they are ever in distress.'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const AlertCodes())));
              },
              child: Container(
                height: 80,
                width: 380,
                //color: Colors.white,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.safety_check,
                      color: Colors.red,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text('Safety alert cancellation codes',
                          style: TextStyle(color: Colors.red, fontSize: 22)),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded3,
                      color: Colors.red,
                      expandedColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded3 = !_isExpanded3;
                        });
                      },
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isExpanded3,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Set codes that will act as passwords to prevent miscreants from cancelling your Safety alerts'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const Wearable())));
              },
              child: Container(
                height: 80,
                width: 380,
                //color: Colors.white,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.watch,
                      color: Colors.red,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text('Pair wearables',
                          style: TextStyle(color: Colors.red, fontSize: 22)),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded4,
                      color: Colors.red,
                      expandedColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded4 = !_isExpanded4;
                        });
                      },
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isExpanded4,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Connect your wearables so that you can raise alerts more quickly'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: 380,
              //color: Colors.white,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 25),
                  const Icon(
                    Icons.handshake,
                    color: Colors.green,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text('Be a GuardOn angel',
                        style: TextStyle(color: Colors.green, fontSize: 22)),
                  ),
                  ExpandIcon(
                    isExpanded: _isExpanded5,
                    color: Colors.green,
                    expandedColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (bool isExpanded) {
                      setState(() {
                        _isExpanded5 = !_isExpanded5;
                      });
                    },
                  ),
                  const SizedBox(width: 25),
                ],
              ),
            ),
            Visibility(
              visible: _isExpanded5,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Receive alerts from GuardOn users in your activity and help them as a GuardOn angel'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: 380,
              //color: Colors.white,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 218, 180, 12))),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 25),
                  const Icon(
                    Icons.people,
                    color: Color.fromARGB(255, 218, 180, 12),
                    size: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text('Select your responders',
                        style: TextStyle(
                            color: Color.fromARGB(255, 218, 180, 12),
                            fontSize: 22)),
                  ),
                  ExpandIcon(
                    isExpanded: _isExpanded6,
                    color: Color.fromARGB(255, 218, 180, 12),
                    expandedColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (bool isExpanded) {
                      setState(() {
                        _isExpanded6 = !_isExpanded6;
                      });
                    },
                  ),
                  const SizedBox(width: 25),
                ],
              ),
            ),
            Visibility(
              visible: _isExpanded6,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Choose who should receive your distress alerts'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 80,
                width: 380,
                //color: Colors.white,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 218, 180, 12))),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 218, 180, 12),
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: Text('Add your email',
                          style: TextStyle(
                              color: Color.fromARGB(255, 218, 180, 12),
                              fontSize: 22)),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded7,
                      color: const Color.fromARGB(255, 218, 180, 12),
                      expandedColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded7 = !_isExpanded7;
                        });
                      },
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _isExpanded7,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Add email address'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: 400,
              //color: Colors.white,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 218, 180, 12))),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 25),
                  const Icon(
                    Icons.phone_android,
                    color: Color.fromARGB(255, 218, 180, 12),
                    size: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text('Permissions',
                        style: TextStyle(
                            color: Color.fromARGB(255, 218, 180, 12),
                            fontSize: 22)),
                  ),
                  ExpandIcon(
                    isExpanded: _isExpanded8,
                    color: Color.fromARGB(255, 218, 180, 12),
                    expandedColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (bool isExpanded) {
                      setState(() {
                        _isExpanded8 = !_isExpanded8;
                      });
                    },
                  ),
                  const SizedBox(width: 25),
                ],
              ),
            ),
            Visibility(
              visible: _isExpanded8,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child:
                    Text('Control resources GuardOn can access on your phone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
