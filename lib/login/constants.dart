import 'dart:ui';
import 'package:flutter/material.dart';

class Constants{
  static final loginStyle = TextStyle(
    fontSize: 50,
    color: Colors.blueAccent,
    shadows: <Shadow>[
      Shadow(
        color: Colors.black.withOpacity(0.4),
        offset: Offset(5.0, 5.0),
        blurRadius: 16.0,
      ),
    ],
  );


  static final tabStyle = TextStyle(color: Colors.black);

  static final headingStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.blue);


  static final boxShadow1 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      offset: Offset(6.0, 6.0),
      blurRadius: 16.0,
    ),
  ];

  static final decorationNeumorphic = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.8),
        blurRadius: 16.0,
      ),
      BoxShadow(
        color: Colors.black.withOpacity(0.6),
        offset: Offset(6.0, 6.0),
        blurRadius: 16.0,
      ),
    ],
    gradient:  LinearGradient(colors: [Colors.blueAccent,Colors.lightBlue]),
    borderRadius: BorderRadius.circular(10.0),
  );

  static final decorationNeumorphic2 = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        // offset: Offset(-6.0, -6.0),
        blurRadius: 16.0,
      ),
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        offset: Offset(6.0, 6.0),
        blurRadius: 16.0,
      ),
    ],
    color: Color(0xFFEFEEEE),
    borderRadius: BorderRadius.circular(100.0),
  );

  static final decorationNeumorphic3 =  BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.8),
        blurRadius: 16.0,
      ),
      BoxShadow(
        color: Colors.black.withOpacity(0.15),
        offset: Offset(6.0, 7.0),
        blurRadius: 16.0,
      ),
    ],
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
  );
}