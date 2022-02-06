import 'package:flutter/material.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({Key? key}) : super(key: key);

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text("I'll probably be a list of groceries soon, exciting!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      ]),
    );
  }
}
