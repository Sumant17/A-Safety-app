import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/alert_screen_tabs/nearme_tab.dart';
import 'package:setup/home_screen/screens/alert_screen_tabs/raised_tab.dart';
import 'package:setup/home_screen/screens/alert_screen_tabs/received_tab.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Alert",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Text(
                      "Near Me",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Received",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Raised",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
            Expanded(
                child: TabBarView(children: [NearMe(), Received(), Raised()]))
          ],
        ),
      ),
    );
  }
}
