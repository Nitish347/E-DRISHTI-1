import 'package:e_drishti/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Drishti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

