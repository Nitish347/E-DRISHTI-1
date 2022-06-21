import 'package:flutter/material.dart';

class dashboardUI extends StatefulWidget {
  const dashboardUI({Key? key}) : super(key: key);

  @override
  State<dashboardUI> createState() => _dashboardUIState();
}

class _dashboardUIState extends State<dashboardUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            color: Color(0xffF3F8FD),
            elevation: 3.0,
            child: Text(
              "Life is a constant journey of trying to open your eyes. I’m just begining my journey, and my eyes aren’t fully open yet.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
