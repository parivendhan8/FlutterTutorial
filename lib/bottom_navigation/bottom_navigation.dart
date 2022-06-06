

import 'package:flutter/material.dart';
import 'package:untitled/list/list_screen.dart';

import '../stack/alignment.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    const AlignmentScreen(),
    const Text('Page 2', style: TextStyle(fontSize: 20)),
    const ListScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 10,
          items: const [

        BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Page 1',
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Page 2',
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Page 3',
        ),

      ]),
    );
  }
}
