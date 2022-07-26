import 'test_yourself4.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestYourself3 extends StatelessWidget {
  const TestYourself3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Quiz2();
  }
}

class Quiz2 extends StatefulWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen"),),

      backgroundColor: Colors.white,
      body: SafeArea(


        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(lineHeight: 15.0,
                  width: 200.0,
                  percent: 0.50,
                  backgroundColor: Color(0xffE8E8E8),
                  progressColor: Colors.blue,
                ),
              ],
            ),
            Text('Add two number:\n'
                ''
                ''
                '2+3=',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 430),
            Center(
              child: SizedBox(height: 50,width: 200,
                child: ElevatedButton(
                  child: Text('Next',

                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30

                    ),
                  ),
                  // color: new Color(0xff622F74),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=>TestYourself4()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}