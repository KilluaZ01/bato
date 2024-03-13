// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:front_end/pages/menu/side_menu.dart';

class BusDetailScreen extends StatelessWidget {
  const BusDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 81, 85, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: SideMenu(),
      backgroundColor: Color.fromRGBO(20, 46, 48, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Color.fromRGBO(24, 81, 85, 1),
                height: 300,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'lib/images/Logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 25, right: 25, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search for bus detail',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.red, // Set icon color to white
                      ),
                    ),
                    label: Text(
                      'Favorites',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19), // Set text color to white
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.history,
                        size: 25,
                        color: Colors.white, // Set icon color to white
                      ),
                    ),
                    label: Text(
                      'Recent History',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19), // Set text color to white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size s) {
    double h = s.height;
    double w = s.width;
    var p = Path();
    p.lineTo(0, h - 60);
    p.quadraticBezierTo(w / 2, h, w, h - 60);
    p.lineTo(w, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
