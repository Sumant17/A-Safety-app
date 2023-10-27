import 'package:flutter/material.dart';
import 'package:setup/profile_details/home_screen.dart';
import 'package:setup/profile_details/single_screen/wearable.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  _onExpand() {
    return Padding(
      padding: const EdgeInsets.only(right: 110),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'GuardOn V 1.11',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Terms of Use',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerHeader(
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const HomeScreen())));
                      },
                      icon: const Icon(Icons.person_outline_outlined),
                      label: const Text('View Profile'))),
              const Text(
                'Sumant R K',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.handshake,
              color: Colors.black87,
            ),
            title: const Text('Trusted Contacts'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.speaker_group_sharp,
              color: Colors.black87,
            ),
            title: const Text('Trusted Groups'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.watch,
              color: Colors.black87,
            ),
            title: const Text('Wearables'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const Wearable())));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.lock,
              color: Colors.black87,
            ),
            title: const Text('Permissions'),
            onTap: () {},
          ),
          const Divider(
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.black87,
            ),
            title: const Text('Share'),
            onTap: () {},
          ),

          ExpansionTile(
            leading: const Icon(
              Icons.info,
              color: Colors.black87,
            ),
            title: const Text('About'),
            children: [
              _onExpand(),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.person_add),
                          // Container(
                          //   width: 180,
                          //   padding: const EdgeInsets.all(10),
                          //   child: Image.network(
                          //     'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
                          //     fit: BoxFit.fitHeight,
                          //     width: 180,
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: Text('Invite to GuardOn'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.star_half_outlined),
                          // Container(
                          //   width: 180,
                          //   padding: const EdgeInsets.all(10),
                          //   child: Image.network(
                          //     'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
                          //     fit: BoxFit.fitHeight,
                          //     width: 180,
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: Text('Rate on Play Store'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1.5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.feedback),
                          // Container(
                          //   width: 180,
                          //   padding: const EdgeInsets.all(10),
                          //   child: Image.network(
                          //     'https://guardon.com/wp-content/uploads/2018/02/guardon-freedom-key-1.jpg',
                          //     fit: BoxFit.fitHeight,
                          //     width: 180,
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: Text('Feedback'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
          // const Icon(Icons.facebook),
        ],
      ),
    );
  }
}
