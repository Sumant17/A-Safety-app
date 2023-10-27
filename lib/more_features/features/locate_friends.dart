import 'package:flutter/material.dart';
import 'package:setup/more_features/features/more_features.dart';

class LocateFriends extends StatefulWidget {
  const LocateFriends({super.key});

  @override
  State<LocateFriends> createState() => _LocateFriendsState();
}

class _LocateFriendsState extends State<LocateFriends> {
  bool isSwitched = false;
  List<String> items = <String>['Nearest', 'Furthest', 'Latest', 'Oldest'];
  String dropdownVlue = 'Nearest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MoreFeatures()));
            },
            icon: const Icon(
              Icons.arrow_back,
            )),
        title: const Text("Locate Friends"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.shield,
                  size: 30,
                  color: Colors.black45,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Safety Check",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 0.9,
                  child: Switch(
                      activeColor: Colors.blue,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          // ignore: avoid_print
                          print(isSwitched);
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12)),
                  child: const Icon(
                    Icons.lock,
                    size: 30,
                    color: Color.fromARGB(255, 231, 186, 53),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                DropdownButton<String>(
                  iconSize: 30,
                  value: dropdownVlue,
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownVlue = newValue!;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
