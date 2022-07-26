import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Triangle extends StatefulWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  _TriangleState createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Practice"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            )),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height/15,),
            Center(
                child: Text(
              "Draw a square",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            )),
            Image.asset(
              "assets/images/tri.png",
              height: height / 2.8,
            ),
            SizedBox(height: height/15,),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.speaker_2_fill,
                  size: height / 15,
                  color: Colors.blueAccent,
                ))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(Triangle());
}
