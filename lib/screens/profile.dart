import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Item> _data = [
    Item(
      headerValue: 'About Me',
      expandedValue: 'Sex: Male\nAge: 29\nHeight: 6\u0027\nWeight: 187lbs\n',
    ),
    Item(
      headerValue: 'Diet Details',
      expandedValue:
          'Activity Level: Moderate\nGoal: Lose Fat\nDiet: Standard\nCarb Cycling: Enabled',
    ),
    Item(
      headerValue: 'Summary',
      expandedValue:
          'My performance highlights could live here!\n(Perhaps as a graph?)',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(children: [
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://googleflutter.com/sample_image.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          const Text(
            "John Doe",
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ]),
        Expanded(
            child: SingleChildScrollView(
          child: _buildPanel(),
        )),
      ]),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            trailing: const Icon(Icons.delete),
            // onTap: () {setState(() {});}
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}
