import 'package:flutter/material.dart';

class UserAuthentication extends StatefulWidget {
  const UserAuthentication({Key? key}) : super(key: key);

  @override
  _UserAuthenticationState createState() => _UserAuthenticationState();
}

class _UserAuthenticationState extends State<UserAuthentication> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
            key: formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Email Address', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Create Password', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                  child: const Text('Save & Continue'))
            ])));
  }
}
