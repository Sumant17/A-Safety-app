import 'package:flutter/material.dart';
import 'package:setup/profile_details/products/scan_bluetooth.dart';

class WearablesSelect extends StatefulWidget {
  const WearablesSelect({super.key});

  @override
  State<WearablesSelect> createState() => _WearablesSelectState();
}

class _WearablesSelectState extends State<WearablesSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Wearables'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Scanner())));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.5),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 170,
                            padding: const EdgeInsets.all(10),
                            child: Image.network(
                              'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
                              fit: BoxFit.fitHeight,
                              width: 180,
                            ),
                          ),
                          const Text('GuardOn Freedom Key'),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Scanner())));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.5),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            padding: const EdgeInsets.all(10),
                            child: Image.network(
                              'https://www.bgr.ionidea.com/guardon/wp-content/uploads/2018/12/guardon-freedom-basic-black-1-600x600.jpg',
                              fit: BoxFit.fitHeight,
                              width: 180,
                            ),
                          ),
                          const Text('GuardOn Freedom Basic'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => const Scanner())));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1.5),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        padding: const EdgeInsets.all(10),
                        child: Image.network(
                          'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
                          fit: BoxFit.fitHeight,
                          width: 180,
                        ),
                      ),
                      const Text('GuardOn Freedom Explorer'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
