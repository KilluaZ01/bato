// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:front_end/pages/menu/side_menu.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 81, 85, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: SideMenu(),
      backgroundColor: Color.fromRGBO(20, 46, 48, 1),
      body: Column(
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
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size s) {
    //declared the variavles
    double h = s.height;
    double w = s.width;
    // created a path
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
