import 'package:flutter/material.dart';
import 'diet_preferences.dart';

class UserAttributes extends StatefulWidget {
  const UserAttributes({Key? key}) : super(key: key);

  @override
  _UserAttributesState createState() => _UserAttributesState();
}

class _UserAttributesState extends State<UserAttributes> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                      labelText: 'Enter your name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
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
                      labelText: 'Indicate your sexual orientation',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please make a selection';
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
                          MaterialPageRoute(
                              builder: (context) => const DietPreferences()),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  )),
            ])));
  }
}
