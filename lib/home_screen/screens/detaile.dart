import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/detail_screen_tab/chat_tab.dart';
import 'package:setup/home_screen/screens/detail_screen_tab/details_tab.dart';
import 'package:setup/home_screen/screens/detail_screen_tab/navigation_tab.dart';
import 'package:setup/home_screen/screens/screen5.dart';

// ignore: camel_case_types
// ignore: camel_case_types
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlertScreen()));
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Alert"),
          actions: const [Icon(Icons.question_mark)],
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
                        "Details",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Navigation",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Chat",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ]),
              Expanded(
                  child: TabBarView(children: [
                Details(), Navigation(),
                //  ChatScreen()
              ]))
            ],
          ),
        ));
  }
}
