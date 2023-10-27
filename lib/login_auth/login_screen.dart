import 'package:flutter/material.dart';
import 'package:setup/login_auth/phone/login_with_phone.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:setup/register/permissions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  facebookLogin() async {
    print("FaceBook");
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => const Permissions())));
        print(userData);
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/guaronicon.png',
                height: 90,
              ),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'with social media',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        facebookLogin;
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.facebook,
                          size: 45,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/google.png',
                        height: 38,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Text('OR'),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const PhoneLogin())));
                    },
                    icon: const Icon(Icons.phone),
                    label: const Text('Phone'))
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: const Icon(Icons.phone),
                //       color: Colors.blue,
                //     ),
                //     const Text(
                //       'Phone',
                //       style: TextStyle(color: Colors.blue),
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
