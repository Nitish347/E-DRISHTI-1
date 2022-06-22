import 'dart:async';

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
  int counter=60;
  late Timer timer;

  void startTimer(){


    counter=60;
    if(timer != null){
      timer.cancel();
    }
    timer=Timer.periodic(Duration(seconds: 1),(timer){
      setState(() {
        if(counter>0) {
          counter--;
        }

        else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Main screen",
        ),
      ),

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              (counter>0)? Text(""):Text("Done",style: TextStyle(color: Colors.blue),),


              Align(
                alignment: Alignment.topCenter,
                child: LinearPercentIndicator(
                  lineHeight: 15.0,
                  width: MediaQuery.of(context).size.width / 1.25,
                  percent: 0.0,
                  backgroundColor: Color(0xffE8E8E8),
                  progressColor: Colors.blue,
                ),
              ),
              Text(
                'Draw a Square',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 430,),
              Button(),

            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50,width: 200,
      child: ElevatedButton(
        onPressed: ()=>{// startTimer(),
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) =>
                  TestYourself2()))// color: new Color(0xff622F74),
        },
        child: Text(
          'Next',
          style: TextStyle(fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}