import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
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
                  "Draw a circle",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                )),
            SizedBox(height: height/20,),
            Image.asset(
              "assets/images/circle.png",
              height: height / 2.8,
            ),
            SizedBox(height: height/10),
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
