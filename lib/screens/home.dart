import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SwitchListTile(
            title: const Text("Daily Target"),
            value: _state,
            onChanged: (bool value) {
              setState(() {
                _state = value;
              });
            }),
        DataTable(
          columns: const [
            DataColumn(
                label: Text('ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Name',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Profession',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('John')),
              DataCell(Text('Student')),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('Harry')),
              DataCell(Text('Leader')),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('Peter')),
              DataCell(Text('Scientist')),
            ]),
          ],
        ),
      ]),
    );
  }
}
