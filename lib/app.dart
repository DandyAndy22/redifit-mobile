import 'package:flutter/material.dart';
// import 'screens/tabs.dart';
import 'screens/login.dart';
// import 'screens/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RediFit',
      theme:
          ThemeData(primarySwatch: Colors.lightBlue, fontFamily: 'EB Garamond'),
      home: const Login(),
    );
  }
}
