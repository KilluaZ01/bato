import 'package:flutter/material.dart';
import 'package:front_end/pages/login_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(20, 46, 48, 1),
        body: Center(
            child: ListView(
          children: [
            TextButton(
              child: const Text(
                'feri login garrum la',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            )
          ],
        )));
  }
}
