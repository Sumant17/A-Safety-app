import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:setup/login_auth/login_screen.dart';
import 'package:setup/login_auth/phone/verify_otp.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  static String verify = '';

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController _countryCode = TextEditingController();
  var phone = '';

  @override
  void initState() {
    super.initState();
    _countryCode.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
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
              child: Text(
                  'After you enter your mobile number and tap the SEND OTP button,within a few minutes you will receive a text message with a verification code.Please enter that code to verify your phone number.'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: _countryCode,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        phone = value;
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Phone number'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 240,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const LoginScreen())));
                    },
                    child: const Text('Back'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${_countryCode.text + phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          PhoneLogin.verify = verificationId;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const Verify())));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: const Text('SEND OTP'),
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
