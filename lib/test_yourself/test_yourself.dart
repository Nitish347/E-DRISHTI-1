import 'dart:async';
import 'package:e_drishti/Widget.dart';
import 'package:e_drishti/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:highlight_text/highlight_text.dart';
import 'package:avatar_glow/avatar_glow.dart';


List<String> myList= ['0.5','0.154','1.61','1.414','1.414'];
List<String> questions=['1. The value of (Sin 30): ',
  '2. The value of (cosine 30): ',
  '3. The value of (tan 45): ',
  '4. The value of (sec 45): ',
  '5. The value of (cosec 30): '];



class SpeechScreen extends StatefulWidget {
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  final Map<String, HighlightedWord> _highlights = {
    '0.5': HighlightedWord(
      onTap: () => print('flutter'),
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    '0.154': HighlightedWord(
      onTap: () => print('voice'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    '1.61': HighlightedWord(
      onTap: () => print('subscribe'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    '1.414': HighlightedWord(
      onTap: () => print('like'),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    '1.414': HighlightedWord(
      onTap: () => print('comment'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
  };

  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;
  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Dashboard()));
          },

        ),
        title: Text('Test Yourself'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _listen,
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
          child: TextHighlight(
            text: _text,
            words: _highlights,
            textStyle: const TextStyle(
              fontSize: 32.0,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}


// class test extends StatefulWidget {
//   const test({Key? key}) : super(key: key);
//
//   @override
//   State<test> createState() => _testState();
// }
//
// class _testState extends State<test> {
//   @override
//   Widget build(BuildContext context) {
//     return Quiz();
//   }
// }
//
// class Quiz extends StatefulWidget {
//   const Quiz({Key? key}) : super(key: key);
//
//   @override
//   State<Quiz> createState() => _QuizState();
// }



// class _QuizState extends State<Quiz> {
//   int counter=60;
//   late Timer timer;
//
//   void startTimer(){
//
//
//     counter=60;
//     if(timer != null){
//       timer.cancel();
//     }
//     timer=Timer.periodic(Duration(seconds: 1),(timer){
//       setState(() {
//         if(counter>0) {
//           counter--;
//         }
//
//         else {
//           timer.cancel();
//         }
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("Main screen",
//         ),
//       ),
//
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//         child: SafeArea(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               (counter>0)? Text(""):Text("Done",style: TextStyle(color: Colors.blue),),
//
//
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: LinearPercentIndicator(
//                   lineHeight: 15.0,
//                   width: MediaQuery.of(context).size.width / 1.25,
//                   percent: 0.0,
//                   backgroundColor: Color(0xffE8E8E8),
//                   progressColor: Colors.blue,
//                 ),
//               ),
//               Text(
//                 'Draw a Square',
//                 style: TextStyle(
//                     fontSize: 30.0,
//                     color: Colors.black,
//                     fontWeight: FontWeight.normal),
//               ),
//               SizedBox(height: 430,),
//               Button(),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Button extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(height: 50,width: 200,
//       child: ElevatedButton(
//         onPressed: ()=>{// startTimer(),
//           Navigator.of(context).pushReplacement(MaterialPageRoute(
//               builder: (context) =>
//                   TestYourself2()))// color: new Color(0xff622F74),
//         },
//         child: Text(
//           'Next',
//           style: TextStyle(fontSize: 30,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }