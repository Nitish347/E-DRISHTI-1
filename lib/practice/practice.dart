import 'package:flutter/material.dart';


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
    return Container(
      child: Image.asset(
        "assets/images/comingsoon.jpg",
        height: height/2,
        width: width*0.8,
      ),
    );
  }
}

// class practice extends StatelessWidget {
//     @override
//
//   Widget build(BuildContext context) {
//     return AssetImage("assets/comingsoon.jpg");
//   }
// }
