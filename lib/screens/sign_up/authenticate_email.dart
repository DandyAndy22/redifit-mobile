import 'package:flutter/material.dart';
import '/widgets/otp_field.dart';
import 'user_attributes.dart';

class AuthenticateEmail extends StatefulWidget {
  const AuthenticateEmail({Key? key}) : super(key: key);

  @override
  State<AuthenticateEmail> createState() => _AuthenticateEmailState();
}

class _AuthenticateEmailState extends State<AuthenticateEmail> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Email Authentication'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          // Implement 4 input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpField(controller: _fieldOne, autoFocus: true),
              OtpField(controller: _fieldTwo, autoFocus: false),
              OtpField(controller: _fieldThree, autoFocus: false),
              OtpField(controller: _fieldFour, autoFocus: false)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _otp = _fieldOne.text +
                      _fieldTwo.text +
                      _fieldThree.text +
                      _fieldFour.text;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserAttributes()),
                );
              },
              // temporarily continue through setup flow for development
              child: const Text('Submit')),
          const SizedBox(
            height: 30,
          ),
          // Display the entered OTP code
          Text(
            _otp ?? 'Please enter OTP',
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
