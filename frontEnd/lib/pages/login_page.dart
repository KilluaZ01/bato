// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, depend_on_referenced_packages, use_build_context_synchronously
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:front_end/pages/home.dart';
import 'package:front_end/config.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passenable = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late SharedPreferences prefs;
  bool _isNotValidate = false;
  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  void loginUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var reqBody = {
        "email": emailController.text,
        "password": passwordController.text
      };
      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqBody));
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['status']) {
        var myToken = jsonResponse['token'];
        prefs.setString('token', myToken);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        print('Something went wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 46, 48, 1),
      body: Center(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(60),
            child: Image.asset(
              'lib/images/Logo.png',
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Enter Phone number or Email',
                labelStyle: TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                errorText: _isNotValidate ? "Enter valid email" : null,
              ),
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 222, 222, 222)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: passwordController,
              obscureText: passenable,
              decoration: InputDecoration(
                labelText: "Enter Password",
                labelStyle: TextStyle(color: Color.fromRGBO(142, 142, 142, 1)),
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
                    EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                errorText: _isNotValidate ? "Enter valid password" : null,
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 222, 222, 222),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                onPressed: () {
                  loginUser();
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 40, 40, 40),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Colors.greenAccent,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/google.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 40, 40, 40),
                  backgroundColor: const Color.fromARGB(255, 24, 119, 242),
                  shadowColor: Colors.greenAccent,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/facebook.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sign in with Facebook',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              const Text(
                'Does not have account?',
                style: TextStyle(fontSize: 15, color: Color(0xFFE2E2E2)),
              ),
              TextButton(
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  //signup screen
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ]),
      ),
    );
  }
}
