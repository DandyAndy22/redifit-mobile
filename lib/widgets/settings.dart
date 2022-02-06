import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
              height: 125,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                ),
                child: const Center(
                    child: Text('Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28))),
              )),
          ListTile(
            title: const Text('Preferences',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('What/why?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Help',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Sign Out',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
