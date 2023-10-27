import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/check_in_tabs/add%20check%20in/add_check_in_tab.dart';
import 'package:setup/home_screen/screens/check_in_tabs/history_tab.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({super.key});

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Check-in",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Text(
                      "Add Check-in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "History",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
            Expanded(child: TabBarView(children: [AddCheckIn(), History()]))
          ],
        ),
      ),
    );
  }
}
