import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';

class UserAttributes extends StatefulWidget {
  const UserAttributes({Key? key}) : super(key: key);

  @override
  _UserAttributesState createState() => _UserAttributesState();
}

class _UserAttributesState extends State<UserAttributes> {
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
                    labelText: 'Name', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Sex', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please indicate your sex';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Age', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your age';
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
