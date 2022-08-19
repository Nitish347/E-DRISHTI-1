import 'package:e_drishti/Widget.dart';
import 'package:flutter/material.dart';

class Concept_Widget extends StatelessWidget {
  const Concept_Widget({Key? key, required this.title, required this.content, required this.image}) : super(key: key);

  final String title;
  final String content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            appbar(title: 'Concepts & Explanation'),
            Padding(
              padding: const EdgeInsets.only(top: 35.0,bottom: 12.0),
              child: Text(title,style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 15.0, left: 20.0, right: 20.0),
              child: Image.network(image),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(content,style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),),
            ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: ElevatedButton(
                    onPressed: () {  },
                    child: Text(
                      'Understand the Concept Practically',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                        color: Colors.white,
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.blue,
                    minimumSize: const Size.fromHeight(55),
                  ),
                  ),
           ),

          ],
        ),
      ),
    );
  }
}
