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
                    rows: _state
                        ? const [
                            DataRow(cells: [
                              DataCell(Text('2098')),
                              DataCell(Text('81')),
                              DataCell(Text('159')),
                              DataCell(Text('183')),
                            ]),
                          ]
                        : const [
                            DataRow(cells: [
                              DataCell(Text('2689')),
                              DataCell(Text('81')),
                              DataCell(Text('307')),
                              DataCell(Text('183')),
                            ]),
                          ]),
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
                      DataCell(Text('17050')),
                      DataCell(Text('568')),
                      DataCell(Text('1705')),
                      DataCell(Text('1279')),
                    ]),
                    // DataRow(cells: [
                    //   DataCell(Text('5')),
                    //   DataCell(Text('John')),
                    //   DataCell(Text('Student')),
                    //   DataCell(Text('Student')),
                    // ]),
                  ],
                ),
              ]);
            }));
  }
}
