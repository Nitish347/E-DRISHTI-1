
import 'package:flutter/material.dart';
import 'test_yourself.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start Screen"),
      ),
      backgroundColor: Colors.white,
      body:



      Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image(image: AssetImage('assets/strt quiz.jpg')),
            ),

            SizedBox(height: 50,width: 200,
              child: ElevatedButton(
                child: Text("Let's Begin",

                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30

                  ),
                ),
                // color: new Color(0xff622F74),
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=>Quiz()),
                  );
                },
              ),
            ),
          ]),

    )

    ;
  }
}
