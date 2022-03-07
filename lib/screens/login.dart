import 'package:flutter/material.dart';
import 'sign_up/setup_credentials.dart';
import 'user_authentication.dart';
import 'tabs.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Supabase Authentication'),
      ),
      body: Column(children: [
        const Text("Welcome to RediFit!"),
        Center(
          child: ElevatedButton(
            child: const Text('Sign Up'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SetupCredentials()),
              );
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            child: const Text('Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserAuthentication()),
              );
            },
          ),
        ),
        Center(
          child: ElevatedButton(
            child: const Text('Home - Temp for Dev'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tabs()),
              );
            },
          ),
        ),
      ]),
    );
  }
}
