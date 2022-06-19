import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../Widget.dart';
import 'test_yourself3.dart';
class TestYourself2 extends StatelessWidget {
  const TestYourself2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child:  Column(
              children: <Widget>[

                appbar(title: 'Test Yourself'),
                LinearPercentIndicator(lineHeight: 15.0,
                  width: 200.0,
                  percent: 0.25,
                  progressColor: Colors.blue,),
                Text('Draw a Triangle',
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
                        MaterialPageRoute(builder: (context)=>TestYourself3()),
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
