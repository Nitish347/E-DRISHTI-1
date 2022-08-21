import 'package:flutter/material.dart';
import 'package:e_drishti/dashboard.dart';

class practice extends StatefulWidget {
  const practice({Key? key}) : super(key: key);

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: new AppBar(
        title: Text('Practice'),
        leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
        onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Dashboard()));
        },
        ),
        centerTitle: true,
        ),
        body: Center(
          child: Container(
      child: Image.asset(
          "assets/images/comingsoon.jpg",
          height: height/2,
          width: width*0.8,
      ),
    ),
        ),
    );
  }
}
