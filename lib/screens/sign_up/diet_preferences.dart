import 'package:flutter/material.dart';
import '../tabs.dart';

class DietPreferences extends StatefulWidget {
  const DietPreferences({Key? key}) : super(key: key);

  @override
  _DietPreferencesState createState() => _DietPreferencesState();
}

class _DietPreferencesState extends State<DietPreferences> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to RediFit!'),
        ),
        body: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select your expected activity level',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select your activity level';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Please select your goal',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select your goal';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your age',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please provide select your age';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select your height',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select your height';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select your weight',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select your weight';
                      }
                      return null;
                    },
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Tabs()),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  )),
            ])));
  }
}
