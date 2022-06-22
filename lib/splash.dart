import 'dart:async';

import 'package:e_drishti/widget.dart';
import 'package:flutter/material.dart';

import 'intro_slider.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({ Key? key }) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 10),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => IntroSliderPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Align( alignment: Alignment.topCenter,child:appbar(title: 'E-Drishti'),),
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/drishti.png"),
                    radius: MediaQuery.of(context).size.height * 0.25,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),),
          ],
        )
    );
  }
}
