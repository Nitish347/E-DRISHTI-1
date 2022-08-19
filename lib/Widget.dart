import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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



class navBar extends StatefulWidget {
  navBar ({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<navBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Study Material', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Practice', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Test Yourself', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,),
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_lesson_rounded,),
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_rounded,),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_rounded,),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),


  //   return Container(
  //       margin: EdgeInsets.fromLTRB(width * 0.5, width * 0.5, width * 0.5, width * 0.8),
  //       height: width * .155,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black.withOpacity(0.1),
  //             blurRadius: 30,
  //             offset: Offset(0,10),
  //           ),
  //         ],
  //         borderRadius: BorderRadius.circular(50),
  //       ),
  //       child: ListView.builder(
  //           itemCount: 4,
  //           scrollDirection: Axis.horizontal,
  //           padding: EdgeInsets.symmetric(horizontal: width * 0.02),
  //           itemBuilder: (context, index) => InkWell(
  //             onTap: (){
  //             setState((){
  //             currentindex = index;
  //               HapticFeedback.lightImpact();
  //             },
  //           );
  // },
  // splashColor: Colors.transparent,
  // highlightColor: Colors.transparent,
  // child: Stack(
  //     children: [
  //       AnimatedContainer(
  //           duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   width: index == currentindex?width * 0.32: width * 0.18,
  //   alignment: Alignment.center,
  //
  //   child: AnimatedContainer(
  //   duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   width: index == currentindex?width * 0.32: 0,
  //   height: index == currentindex?width * 0.12: 0,
  //   decoration: BoxDecoration(
  //   color: index == currentindex? Colors.blueAccent.withOpacity(0.2): Colors.transparent,
  //   borderRadius: BorderRadius.circular(50),
  //   ),
  //   ),
  //           ),
  //   AnimatedContainer(
  //   duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   width: index == currentindex
  //   ? width * .31
  //       : width * .18,
  //   alignment: Alignment.center,
  //   child: Stack(
  //   children: [
  //   Row(
  //   children: [
  //   AnimatedContainer(
  //   duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   width:
  //   index == currentindex ? width * .13 : 0,
  //   ),
  //   AnimatedOpacity(
  //   opacity: index == currentindex ? 1 : 0,
  //   duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   child: Text(
  //   index == currentindex
  //   ? '${listOfStrings[index]}'
  //       : '',
  //   style: TextStyle(
  //   color: Colors.blueAccent,
  //   fontWeight: FontWeight.w600,
  //   fontSize: 15,
  //   ),
  //   ),
  //   ),
  //   ],
  //   ),
  //   Row(
  //   children: [AnimatedContainer(
  //   duration: Duration(seconds: 1),
  //   curve: Curves.fastLinearToSlowEaseIn,
  //   width:
  //   index == currentindex ? width * .03 : 20,
  //   ),
  //   Icon(
  //   listOfIcons[index],
  //   size: width * .076,
  //   color: index == currentindex
  //   ? Colors.blueAccent
  //       : Colors.black26,
  //   ),
  //   ],
  //   ),
  //   ],
  //   ),
  //   ),
  //   ],
  //     ),
  //   ),
  //   ),

    );
  }
}