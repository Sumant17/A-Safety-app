// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WearableProduct extends StatelessWidget {
  final String image;
  final String item;
  final String text;
  const WearableProduct({
    Key? key,
    required this.image,
    required this.item,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 180,
              padding: const EdgeInsets.all(10),
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
                width: 180,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    item,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
