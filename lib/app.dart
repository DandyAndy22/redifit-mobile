import 'package:flutter/material.dart';
import 'screens/tabs.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RediFit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabs(title: 'Demo Home Page'),
    );
  }
}
