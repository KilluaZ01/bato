// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:front_end/pages/bus_detail.dart';
import 'package:front_end/pages/home_content.dart';
import 'package:front_end/pages/setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Index to keep track of the selected tab

  final List<Widget> _pages = [
    HomeContent(),
    BusDetailScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 46, 48, 1),
      body: _pages[_currentIndex], // Show the selected page
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(20, 46, 48, 1),
        color: Color.fromRGBO(13, 31, 32, 1),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.directions_bus,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
