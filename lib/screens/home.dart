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
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                SwitchListTile(
                    title: const Text("Daily Target"),
                    value: _state,
                    onChanged: (bool value) {
                      setState(() {
                        _state = value;
                      });
                    }),
                DataTable(
                  columnSpacing: 40,
                  columns: const [
                    DataColumn(
                        label: Text('Calories',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Fat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Carbs',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Protein',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('24')),
                      DataCell(Text('456')),
                      DataCell(Text('45')),
                      DataCell(Text('13')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5')),
                      DataCell(Text('John')),
                      DataCell(Text('Student')),
                      DataCell(Text('Student')),
                    ]),
                  ],
                ),
                const Text("Fasting for X days"),
                const Text("Weekly Target"),
                DataTable(
                  columnSpacing: 40,
                  columns: const [
                    DataColumn(
                        label: Text('Calories',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Fat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Carbs',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Protein',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Stephen')),
                      DataCell(Text('Actor')),
                      DataCell(Text('Actor')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5')),
                      DataCell(Text('John')),
                      DataCell(Text('Student')),
                      DataCell(Text('Student')),
                    ]),
                  ],
                ),
              ]);
            }));
  }
}
