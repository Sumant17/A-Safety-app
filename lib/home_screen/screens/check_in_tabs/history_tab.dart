import 'package:flutter/material.dart';
import 'package:setup/home_screen/screens/check_in_tabs/history_detailes.dart';

class History extends StatefulWidget {
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //SizedBox(height: 10,),

          Container(
            height: 70,
            color: Colors.grey,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Filters',
                    style: TextStyle(fontSize: 30),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.horizontal_distribute_rounded))
                ]),
          ),

          SizedBox(
            height: 200,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const HistoryDetails())));
              },
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person_rounded,
                      size: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.access_time_filled_outlined),
                              Text('29 May 2023'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          //height: 100,
                          //width: 20,
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on),
                              //SizedBox(height: 10,),
                              SizedBox(
                                width: 200,
                                height: 100,
                                child: Text(
                                    '42, near Mayuri Estate, deshpande layout, Hubballi, Karnataka, 580023'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
