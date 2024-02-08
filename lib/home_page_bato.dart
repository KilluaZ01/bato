// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 46, 48, 1),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 280,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(24, 81, 85, 1),
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(800.0, 246.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Center(
              child: Image.asset(
                'assets/bato.jpeg',
                width: 185,
                height: 185,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: Container(
              margin: EdgeInsets.only(top: 130),
              width: 320,
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Current Location ',
                    prefixIcon: IconButton(
                        icon: Icon(
                          Icons.square,
                          size: 14.0,
                        ),
                        onPressed: () => {}),
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.location_on,
                          size: 14.0,
                        ),
                        onPressed: () => {}),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            width: 320,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: ' Destination Location',
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.circle,
                      size: 14.0,
                    ),
                    onPressed: () {},
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.location_on,
                      size: 14.0,
                    ),
                    onPressed: () {},
                  ), // Add an icon
                ),
              ),
            ),
          ),
          CupertinoButton(
              child: Container(
                alignment: Alignment.center,
                width: 320,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "Show results",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onPressed: () {}),
        ],
      ),
      bottomNavigationBar: Container(
        child: NavigationBar(
          backgroundColor: Color.fromRGBO(13, 31, 32, 1),
          height: 60,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.bus_alert_outlined), label: 'Bus'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Setting')
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
