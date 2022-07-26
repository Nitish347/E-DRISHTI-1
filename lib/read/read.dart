import 'dart:io';

// import 'maths_page.dart';
// import 'science_page.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'package:e_drishti/Widget.dart';
import 'package:flutter/material.dart';

class read_page extends StatefulWidget {
  const read_page({Key? key}) : super(key: key);
  @override
  State<read_page> createState() => read_page_State();
}

class read_page_State extends State<read_page> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              appbar(title: 'Read Yourself'),
            ],
          ),
      SingleChildScrollView(child:

          //body

      Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              //maths card

              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        height * 0.050),
                    child: Card(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: height / 4,
                          width: width * 0.5,
                          child: Center(
                                child:
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.calculate_outlined, color: Colors.white, size: 150,),
                                    Text("Maths", style: TextStyle(fontSize: 30, fontFamily: 'Poppins', color: Colors.white),),
                                  ],
                                ),),),),),],),


//Science card


    Row(mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [  Padding(
      padding: EdgeInsets.only(
         bottom: height * 0.050, left: height * 0.050, right: height * 0.050),
      child: Card(
    child: Container(
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
    color: Colors.lightBlue,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(10.0),
    ),
    height: height / 4,
    width: width * 0.5,
    child: Center(
    child:
    Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    Icon(Icons.science_outlined, color: Colors.white, size: 150,),
    Text("Science", style: TextStyle(fontSize: 30, fontFamily: 'Poppins', color: Colors.white),),
    ],
    )),),),),],),
   ],),
     ),

          navPage(),

        ],),
    );
  }
}