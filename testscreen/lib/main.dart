import 'package:flutter/material.dart';
import 'package:flutterscreenjp/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        scaffoldBackgroundColor: Color(0xFFD6D6D6),
      ),
      home: Screen(),
    );
  }
}
