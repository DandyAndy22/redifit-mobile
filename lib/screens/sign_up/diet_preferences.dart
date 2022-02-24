import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';

class DietPreferences extends StatefulWidget {
  const DietPreferences({Key? key}) : super(key: key);

  @override
  _DietPreferencesState createState() => _DietPreferencesState();
}

class _DietPreferencesState extends State<DietPreferences> {
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
                    labelText: 'Activity Level', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please choose your expected activity level';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Goal', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please choose your current goal';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: 'Diet Preference', border: OutlineInputBorder()),
                onSaved: (value) {
                  // Store value in DTO (?)
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please choose your diet preference';
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
                  child: const Text('Submit'))
            ])));
  }
}
