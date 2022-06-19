import 'dart:io';

import 'maths_page.dart';
import 'science_page.dart';
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

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          appbar(title: 'Read Yourself'),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: height/8,
                    width: width *0.8,
                    child: ButtonTheme(child: ElevatedButton(onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => science_page()));
                    },

                      child: Center(
                        child: Text(
                          "Maths",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    ),), ],
              ),
          const SizedBox(
            height: 40,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(

                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: height/8,
                width: width *0.8,
             child: ButtonTheme(child: ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => science_page()));
            },

                child: Center(
                  child: Text(
                    "Science",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),), ],
          ),
        ],

      ),
   );
  }
}