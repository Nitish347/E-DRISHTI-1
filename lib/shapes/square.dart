import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Square extends StatefulWidget {
  const Square({Key? key}) : super(key: key);

  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {
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
            SizedBox(height: height/20,),
            Image.asset(
              "assets/images/sqrr.png",
              height: height / 3.5,
            ),
            SizedBox(height: height/6,),
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
