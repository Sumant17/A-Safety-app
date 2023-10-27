import 'package:flutter/material.dart';
import 'package:setup/profile_details/products/wearable_image.dart';
import 'package:setup/profile_details/products/wearable_select.dart';

class Wearable extends StatefulWidget {
  const Wearable({Key? key}) : super(key: key);

  @override
  State<Wearable> createState() => _WearableState();
}

class _WearableState extends State<Wearable> {
  List<String> items = ['Freedom Key', 'Freedom Basic', 'Freedom Explorer'];

  List list = [
    'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
    'https://www.bgr.ionidea.com/guardon/wp-content/uploads/2018/12/guardon-freedom-basic-black-1-600x600.jpg',
    'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg'
  ];

  List<String> texts = [
    'Raise safety and medical alerts.',
    'Raise safety alerts.',
    'Stay protected even when you are not carrying mobile phone'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wearable'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return WearableProduct(
                      image: list[index],
                      item: items[index],
                      text: texts[index]);
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'The app is totally FREE!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 5),
            child: Text(
              'but for extra peace of mind,get a wearable so that you can raise an alert more discreetly,quickly,and easily!',
              style: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Buy')),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Have a wearable?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const WearablesSelect())));
              },
              child: const Text('Pair with App'))
        ],
      ),
    );
  }
}
