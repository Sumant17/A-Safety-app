import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/screen1.dart';
import 'package:setup/home_screen/screens/screen2.dart';
import 'package:setup/home_screen/screens/screen3.dart';
import 'package:setup/home_screen/screens/screen5.dart';
import 'package:setup/home_screen/screens/screen6.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int myIndex = 2;
  List<Widget> widgetList = [
    const CheckIn(),
    const SafetyCheck(),
    const screen3(),
    const AlertScreen(),
    const NavDrawer(),
  ];

  void openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const NavDrawer(),
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        currentIndex: myIndex,
        onTap: (index) {
          if (index == 4) {
            openDrawer();
          } else {
            setState(() {
              myIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_sharp,
              size: 20,
            ),
            label: "Check in",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.safety_check,
              size: 20,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.health_and_safety_outlined,
                size: 40,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.crisis_alert_outlined,
              size: 20,
            ),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 20,
            ),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
