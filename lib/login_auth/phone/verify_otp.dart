import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:setup/login_auth/phone/login_with_phone.dart';
import 'package:setup/register/permissions.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = '';

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Mobile Number',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.question_mark,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Enter OTP'),
            ),
            const SizedBox(
              height: 20,
            ),
            Pinput(
              length: 6,
              showCursor: true,
              onChanged: (value) {
                code = value;
              },
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(width: 1, color: Colors.grey),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 40,
            //         child: TextField(
            //           decoration:
            //               const InputDecoration(border: InputBorder.none),
            //         ),
            //       ),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       const Text(
            //         '|',
            //         style: TextStyle(fontSize: 33, color: Colors.grey),
            //       ),
            //       const Expanded(
            //         child: TextField(
            //           decoration: InputDecoration(
            //               border: InputBorder.none, hintText: 'Phone number'),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 280,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const PhoneLogin())));
                    },
                    child: const Text('Back'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: PhoneLogin.verify,
                                smsCode: code);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Permissions())));
                      } catch (e) {
                        print('Invalid OTP');
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid OTP')));
                      }
                    },
                    child: const Text('Verify'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
