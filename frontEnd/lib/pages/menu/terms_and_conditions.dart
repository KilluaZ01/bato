// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:front_end/pages/menu/side_menu.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 81, 85, 1),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      drawer: SideMenu(),
      backgroundColor: Color.fromRGBO(20, 46, 48, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Terms And Conditions',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Aggrement to terms',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        'These Terms of Use provide information about the Bato Service, which is described below, and they regulate your use of Bato, unless we otherwise specify otherwise. You accept these terms by using Bato or by creating an account. To help you read the terms, we have divided these concepts into the categories below to make them easier for you to understand.',
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
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
    //declared the variables
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
