import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proj1/connect/find.dart';
import 'package:proj1/data/datalist.dart';
import 'package:proj1/sceen/login.dart';
import 'package:proj1/sceen/startToMemo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _pageWidget = [FindDevicesScreen(), login(), StartMemo()];
  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.bluetoothB), label: 'BLE'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.user), label: 'Profile'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.bookOpen), label: 'Memo'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
