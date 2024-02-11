// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(20, 46, 48, 1),
        body: ListView(
          children: [
            //1st box
            Padding(
                padding: const EdgeInsets.all(60),
                child: Center(
                  child: Image.asset(
                    'lib/Assets/logo2.png',
                    width: 200,
                    height: 200,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Phone number or Email',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 222, 222, 222)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your Full Name',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                ),
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 222, 222, 222)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: passenable,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        if (passenable) {
                          passenable = false;
                        } else {
                          passenable = true;
                        }
                      });
                    },
                    icon: Icon(
                      passenable ? Icons.remove_red_eye : Icons.password,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                ),
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 222, 222, 222),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFE2E2E2),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            /*... Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: TextField(
                 Image.asset(
                  'lib/Assets/Google.png',
                    height: 24,
                  ),

                decoration: InputDecoration(
                  labelText: 'Enter your Full Name',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                ),
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 222, 222, 222)),
                
              ),
            ),---*/
          ],
        ));
  }
}
