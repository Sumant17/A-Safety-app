import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:setup/safety_alert_raised/recorder_home_view.dart';
import 'camera_page.dart';

bool click = true;

Color color = Color.fromARGB(255, 205, 16, 3);

class AlertRaised extends StatefulWidget {
  const AlertRaised({Key? key}) : super(key: key);

  @override
  State<AlertRaised> createState() => _AlertRaisedState();
}

class _AlertRaisedState extends State<AlertRaised> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (click == false) ? Color.fromARGB(255, 248, 140, 140) : Colors.white,
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          'Safety Alert',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          Row(children: [
            Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.share,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 40,
              //width: ,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: color,
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  onPrimary: Colors.white,
                ),
                child: Row(children: [
                  Icon(Icons.shield),
                  Text('Cancel'),
                  SizedBox(
                    width: 5,
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ])
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1'),
                  Text('minute'),
                  Text('ago')
                ],
              ),
              Column(children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: Color.fromARGB(255, 75, 75, 75))),
                  child: Text(
                    '0 responded',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                    child: Text(
                      '112',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Text('Nearby:'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                  child: Icon(
                    Icons.star_border_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                  child: Icon(
                    Icons.medical_services,
                    color: Colors.white,
                    size: 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.dangerous),
                      color: Colors.black,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.dangerous),
                      color: Colors.black,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.dangerous),
                      color: Colors.black,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.dangerous),
                      color: Colors.black,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      icon: Icon(Icons.dangerous),
                      color: Colors.black,
                      iconSize: 50,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return RecorderHomeView(
                          title: 'Record your voice',
                        );
                      }),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.volume_down,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return CameraPage();
                      }),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.video_call,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).pop();
                  //   // show the camera
                  //   Home();
                  // },
                  child: Container(
                    height: 50,
                    width: 99,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Icon(
                      Icons.camera_enhance,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 93,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Icon(
                    Icons.photo,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
