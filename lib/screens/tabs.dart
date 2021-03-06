import 'package:flutter/material.dart';
import '../widgets/settings.dart';
import 'primary/home.dart';
import 'primary/profile.dart';
import 'primary/learning_center.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  final List<Map<String, Widget>> pages = [
    {
      'page': const Home(),
    },
    {
      'page': const Profile(),
    },
    {
      'page': const LearningCenter(),
    }
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RediFit"),
      ),
      endDrawer: const Settings(),
      body: pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Learning',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
