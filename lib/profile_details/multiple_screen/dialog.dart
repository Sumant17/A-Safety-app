import 'package:flutter/material.dart';

import 'contacts.dart';

void showSimpleDialogue(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Center(
              child: Text(
            'Contacts',
          )),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (no in contact.phones) ...[
                  Text('$no'),
                  //no++,
                  SizedBox(
                    height: 5,
                  )
                ]

                //Text(contact.emails[0]),
              ],
            ),
          ],
        );
      },
    );
