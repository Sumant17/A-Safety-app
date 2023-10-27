import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:setup/home_screen/screens/detaile.dart';

class NearMe extends StatefulWidget {
  const NearMe({super.key});

  @override
  State<NearMe> createState() => _NearMeState();
}

// ignore: constant_identifier_names
enum AlertValue { Safety, Medical, Roadside_Assistance, Geo_Fench, All }

// ignore: constant_identifier_names
enum AlertValue1 { Active, Inactive, All }

class _NearMeState extends State<NearMe> {
  AlertValue? _alertvalue = AlertValue.Safety;
  AlertValue1? _alertValue1 = AlertValue1.Active;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        GroupButton(
                            options: GroupButtonOptions(
                                borderRadius: BorderRadius.circular(5)),
                            isRadio: false,
                            onSelected: (value, index, isSelected) {
                              if (index == 0) {}
                              // ignore: avoid_print
                              print("selected");
                            },
                            buttons: const ["Active", "Inactive", "All"]),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: const OutlineInputBorder(),
                                      content: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Distress Type",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          RadioListTile(
                                            title: const Text("Safety"),
                                            value: AlertValue.Safety,
                                            groupValue: _alertvalue,
                                            onChanged: (AlertValue? value) {
                                              setState(() {
                                                _alertvalue = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text("Medical"),
                                            value: AlertValue.Medical,
                                            groupValue: _alertvalue,
                                            onChanged: (AlertValue? value) {
                                              setState(() {
                                                _alertvalue = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text(
                                                "Roadside_Assistance"),
                                            value:
                                                AlertValue.Roadside_Assistance,
                                            groupValue: _alertvalue,
                                            onChanged: (AlertValue? value) {
                                              setState(() {
                                                _alertvalue = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text("Geo_Fence"),
                                            value: AlertValue.Geo_Fench,
                                            groupValue: _alertvalue,
                                            onChanged: (AlertValue? value) {
                                              setState(() {
                                                _alertvalue = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text("All"),
                                            value: AlertValue.All,
                                            groupValue: _alertvalue,
                                            onChanged: (AlertValue? value) {
                                              setState(() {
                                                _alertvalue = value;
                                              });
                                            },
                                          ),
                                          const Divider(thickness: 2),
                                          const Text("Distress Status",
                                              style: TextStyle(fontSize: 18)),
                                          RadioListTile(
                                            title: const Text("Active"),
                                            value: AlertValue1.Active,
                                            groupValue: _alertValue1,
                                            onChanged: (AlertValue1? value) {
                                              setState(() {
                                                _alertValue1 = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text("Inactive"),
                                            value: AlertValue1.Inactive,
                                            groupValue: _alertValue1,
                                            onChanged: (AlertValue1? value) {
                                              setState(() {
                                                _alertValue1 = value;
                                              });
                                            },
                                          ),
                                          RadioListTile(
                                            title: const Text("All"),
                                            value: AlertValue1.All,
                                            groupValue: _alertValue1,
                                            onChanged: (value) {
                                              setState(() {
                                                _alertValue1 = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("CANCEL")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("DONE"))
                                      ],
                                      backgroundColor: Colors.white,
                                    );
                                  });
                            },
                            icon: const Icon(Icons.filter_list_rounded))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sanket",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.account_circle_outlined,
                                          size: 90,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 35, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.shield),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("Safety Alert"),
                                              Text("Cancelled")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("10 Apr 2023"),
                                              Text("10:41AM")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("302"),
                                              Text("from here")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(color: Colors.blue),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(330, 50)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailsScreen()));
                                },
                                child: const Text(
                                  "More detailes",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 16),
                                ))
                          ],
                        )),
                    Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sanket",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.account_circle_outlined,
                                          size: 90,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 35, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.shield),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("Safety Aler"),
                                              Text("Cancelled")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("10 Apr 2023"),
                                              Text("10:41AM")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("302"),
                                              Text("from here")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(color: Colors.blue),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(330, 50)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailsScreen()));
                                },
                                child: const Text(
                                  "More detailes",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 16),
                                ))
                          ],
                        )),
                    Container(
                        height: 250,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sanket",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.account_circle_outlined,
                                          size: 90,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 35, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.shield),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("Safety Aler"),
                                              Text("Cancelled")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("10 Apr 2023"),
                                              Text("10:41AM")
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text("302"),
                                              Text("from here")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(color: Colors.blue),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    minimumSize: const Size(330, 50)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailsScreen()));
                                },
                                child: const Text(
                                  "More detailes",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 16),
                                ))
                          ],
                        ))
                  ],
                ),
              ],
            )));
  }
}
