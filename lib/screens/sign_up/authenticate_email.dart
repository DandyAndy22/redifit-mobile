import 'package:flutter/material.dart';

class AuthenticateEmail extends StatefulWidget {
  const AuthenticateEmail({Key? key}) : super(key: key);

  @override
  State<AuthenticateEmail> createState() => _AuthenticateEmailState();
}

class _AuthenticateEmailState extends State<AuthenticateEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text("You will enter an email verfication code here",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ]),
    );
  }
}
