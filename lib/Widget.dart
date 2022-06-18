import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key, required this.title}) : super(key: key);

  final String title;
  final double barHeight = 55.0;

  @override
  Widget build(BuildContext context) {

    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff2683E5), Color(0xff36ABFB)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
