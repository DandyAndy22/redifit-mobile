import 'package:flutter/material.dart';

class LearningCenter extends StatefulWidget {
  const LearningCenter({Key? key}) : super(key: key);

  @override
  State<LearningCenter> createState() => _LearningCenterState();
}

class _LearningCenterState extends State<LearningCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text("Learning Center",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ]),
    );
  }
}
