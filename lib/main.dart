import 'package:flutter/material.dart';
import 'package:home_page_bato/home_page_bato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(20, 46, 48, 100),
      ),
      home: const Homepage(),
    );
  }
}
