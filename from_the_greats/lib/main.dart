import 'package:flutter/material.dart';
import 'input_page.dart';
import 'albert.dart';
import 'tesla.dart';
import 'bob.dart';
import 'mandela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/one': (context) => Tesla(),
        '/two': (context) => Albert(),
        '/three': (context) => Mandela(),
        '/four': (context) => Bob(),
      },
    );
  }
}
