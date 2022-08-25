import 'package:flutter/material.dart';
// import 'package:sharanya/onhover.dart';
import 'package:flutter/services.dart';

class Square extends StatefulWidget {
  const Square({Key? key}) : super(key: key);
  static int Score = 0;
  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Practice"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 350,
                      width: 350,
                      color: Colors.lightBlueAccent.withOpacity(0.3),
                      child: Column(
                        children: List.generate(5, (index) {
                          return Row(
                            children: List.generate(5, (index) {
                              return Box();
                            }),
                          );
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Center(
                      child: Container(
                        height: 210,
                        width: 210,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heigth / 5.5,
            ),
            // Center(
            // child: Text("${Square.Score}/16"),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Refresh(),
                ScoreButton(),
              ],
            )
          ],
        )));
  }
}

class Box extends StatefulWidget {
  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool tap = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (tap == false) {
          setState(() {
            tap = true;
            // score = score + 1;
            // print(score);
            Square.Score = Square.Score + 1;
            print(Square.Score);
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 70,
        height: 70,
        color: tap ? Colors.red : Colors.lightBlueAccent.withOpacity(0.3),
      ),
    );
  }
}

class ScoreButton extends StatelessWidget {
  const ScoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ScoreScreen()));
      },
      child: Container(
        height: 70,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Text(
          "Check Accuracy",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        )),
      ),
    );
  }
}

class Refresh extends StatefulWidget {
  const Refresh({Key? key}) : super(key: key);

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Square.Score = 0;
        });
        Navigator.of(context).pop();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Square()));
      },
      child: Container(
        height: 70,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Icon(
          Icons.refresh,
          size: 50,
          color: Colors.white,
        )),
      ),
    );
  }
}

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accuracy"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue.withOpacity(0.8)),
              child: Center(
                child: Text(
                  "${Square.Score * (100 / 16)}%",
                  style: TextStyle(fontSize: 80, color: Colors.white),
                ),
              ))),
    );
  }
}
