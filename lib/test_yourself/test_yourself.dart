import 'package:e_drishti/Widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'test_yourself2.dart';
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Quiz();
  }
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Column(
          children: <Widget>[

            appbar(title: 'Test Yourself'),
            LinearPercentIndicator(lineHeight: 15.0,
              width: 200.0,
              percent: 0.0,
              progressColor: Colors.blue,),
            Text('Draw a Square',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Next',
                  style: TextStyle(
                    color: Colors.white,

                  ),
                ),
                // color: new Color(0xff622F74),
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=>TestYourself2()),
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}

