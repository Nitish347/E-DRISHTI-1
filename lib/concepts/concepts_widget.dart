import 'package:e_drishti/Widget.dart';
import 'package:e_drishti/concepts/concepts.dart';
import 'package:flutter/material.dart';

import '../dashboard.dart';

class Concept_Widget extends StatelessWidget {
  const Concept_Widget({Key? key, required this.title, required this.content, required this.image}) : super(key: key);

  final String title;
  final String content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Concepts & Explanation'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Concepts()));
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0,bottom: 12.0),
              child: Text(title,style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 30, left: 20.0, right: 20.0,bottom: 20),
              child: Image.network(image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 23, right: 23),
              child: Text(content,style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),),
            ),
           SizedBox(
             height: MediaQuery.of(context).size.height/15,
           ),
           Padding(
             padding: const EdgeInsets.only(bottom: 20.0, left: 14, right: 14),
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
                    minimumSize: const Size.fromHeight(58),
                  ),
                  ),
           ),

          ],
        ),
      ),
    );
  }
}
