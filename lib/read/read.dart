
import 'dart:io';


import 'maths_page.dart';
// import 'science_page.dart';
import 'package:flutter/material.dart';
import 'package:e_drishti/Widget.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'maths_page.dart';


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

    return SafeArea(child: Scaffold(

      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              ExpansionTile(
                collapsedBackgroundColor: Colors.blueAccent,
                childrenPadding: EdgeInsets.only(left: 20),
                title: Text('Chapter 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('AudioBooks'),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),

                      onPressed: () {},

                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                title: Text('Chapter 2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('AudioBooks'),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),

                      onPressed: () {Navigator.push(

                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),

                collapsedBackgroundColor: Colors.blueAccent,

                title: Text('Chapter 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('AudioBooks'),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.blueAccent,

                title: Text('Chapter 4', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('AudioBooks'),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(

                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.blueAccent,
                title: Text('Chapter 5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('AudioBooks'),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              navBar(),
            ],
          )),
    )

    );
  }
}


