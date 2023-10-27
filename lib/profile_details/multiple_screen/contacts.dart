import 'package:fast_contacts/fast_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';

import 'dialog.dart';

var no;
late Contact contact;

class contacts extends StatefulWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  _contactsState createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact List"),
      ),
      body: Container(
        height: double.infinity,
        child: FutureBuilder(
          future: getContacts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: SizedBox(height: 50, child: CircularProgressIndicator()),
              );
            }
            SizedBox(
              height: 15,
            );
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  contact = snapshot.data[index];
                  //var l = contact.phones.length;
                  SizedBox(
                    height: 15,
                  );
                  return Column(children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                      title: Text(contact.displayName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                      onTap: () {
                        showSimpleDialogue(context);
                      },
                    ),
                    const Divider(
                      thickness: 2,
                    )
                  ]);
                });
          },
        ),
      ),
    );
    ;
  }

  Future<List<Contact>> getContacts() async {
    bool isGranted = await Permission.contacts.status.isGranted;
    if (!isGranted) {
      isGranted = await Permission.contacts.request().isGranted;
    }
    if (isGranted) {
      return await FastContacts.getAllContacts();
    }
    return [];
  }
}

Future<List<Contact>> getContacts() async {
  bool isGranted = await Permission.contacts.status.isGranted;
  if (!isGranted) {
    isGranted = await Permission.contacts.request().isGranted;
  }
  if (isGranted) {
    return await FastContacts.getAllContacts();
  }
  return [];
}
