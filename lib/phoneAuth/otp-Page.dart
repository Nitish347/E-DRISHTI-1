//
// import 'dart:ui';
// // import 'package:aktu/auth/login.dart';
// // import 'package:aktu/yearselect/year.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
//
// import 'login.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// class VerifyPage extends StatefulWidget {
//
//   static String id ="verifyPage";
//
//
//
//   @override
//   _VerifyPageState createState() => _VerifyPageState();
// }
// String otp="";
// // FirebaseAuth auth = FirebaseAuth.instance;
//
// String verficationID_received = "";
//
// bool next = false;
//
// bool otp_visible = false;
//
// class _VerifyPageState extends State<VerifyPage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//
//     // verify();
//   }
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     var width = MediaQuery
//         .of(context)
//         .size
//         .width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/kkk.jpeg"),
//                     fit: BoxFit.cover)),
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 1.50, sigmaY: 1.50),
//               child: Container(
//                 color: Colors.black.withOpacity(0.2),
//               ),
//             ),
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: height / 10,
//                   ),
//                   Text("Verify with OTP", style: TextStyle(fontSize: 30,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white),),
//                   Divider(
//                     height: 10,
//                   ),
//                   Text("Sent to +91 ${LoginPage.phoneNumber}", style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white),),
//                   SizedBox(
//                     height: height / 10,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(25.0),
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.grey.withOpacity(0.6)
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(right: 15, bottom: 2),
//                         child: TextField(
//                           maxLength: 6,
//                           textAlign: TextAlign.center,
//                           onChanged: (value) {
//                             otp = value;
//                           },
//                           style: TextStyle(color: Colors.white),
//                           cursorColor: Colors.white,
//
//
//                           decoration: InputDecoration(
//                               counterText: "",
//
//
//                               border: InputBorder.none,
//                               hintText: "Enter OTP",
//
//                               hintStyle: TextStyle(color: Colors.white)),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // SizedBox(height: height/25,),
//                   InkWell(
//                     onTap: () {
//                       // print(otp);
//                       // print(LoginPage.phoneNumber);
//                       // if (otp_visible == true) {
//                       //   verifycode();
//                       // }
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.all(25.0),
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             gradient: LinearGradient(colors: [
//                               Color.fromRGBO(100, 148, 251, 1),
//                               Color.fromRGBO(100, 148, 251, .6),
//                             ])),
//                         child: Center(
//                           child: Text(
//                             "Verify",
//                             style: TextStyle(
//                               // fontSize: 15,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   // void verify() {
//   //   auth.verifyPhoneNumber(
//   //       phoneNumber: "+91${LoginPage.phoneNumber.toString()}",
//   //       verificationCompleted: (PhoneAuthCredential credential) async {
//   //         await auth.signInWithCredential(credential).then((value) {
//   //           print("login successfully");
//   //         });
//   //       },
//   //       verificationFailed: (FirebaseAuthException exception) {
//   //         print(exception.message);
//   //       },
//   //       codeSent: (String verficationID, int? resendtoken) {
//   //         verficationID_received = verficationID;
//   //         setState(() {
//   //           otp_visible = true;
//   //
//   //         });
//   //       },
//   //       codeAutoRetrievalTimeout: (String verficationID) {});
//   // }
//   //
//   // void verifycode() async {
//   //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
//   //       verificationId: verficationID_received, smsCode: otp.toString());
//   //   await auth.signInWithCredential(credential).then((value) {
//   //     print("logged in successfully");
//   //     Navigator.of(context).push(MaterialPageRoute(
//   //         builder: (BuildContext context) =>
//   //             Year()));
//   //
//   //
//   //   });
//   //
//   // }
// }

import 'package:e_drishti/intro_slider.dart';
import 'package:e_drishti/practice/shapes/circle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import '../constants.dart';
import '../emailAuth/emailLogin.dart';

class OTP_Verification extends StatefulWidget {
  static String id = "OTPVerification";
  final String? phoneNumber;

  OTP_Verification({this.phoneNumber});

  @override
  State<OTP_Verification> createState() => _OTP_VerificationState();
}

class _OTP_VerificationState extends State<OTP_Verification> {
  @override
  void initState() {
    verify();
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController _otp = new TextEditingController();

  // FirebaseAuth auth = FirebaseAuth.instance;

  String verficationID_received = "";

  bool next = false;

  bool otp_visible = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
                height: height / 3.5,
                child: Image.asset('assets/images/otp.jpg')),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Column(children: [
              Text(
                "Verify with OTP",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height / 70,
              ),
              Text(
                "Sent to ${widget.phoneNumber}",
                style: TextStyle(fontSize: 17, color: Colors.blueAccent[100]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                decoration: Constants.decorationNeumorphic3,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(left: 20),
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    controller: _otp,
                    decoration: InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        hintText: "Enter OTP",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                if (otp_visible == true) {
                  verifycode();
                }
              },
              child: Container(
                  height: 50,
                  decoration: Constants.decorationNeumorphic,
                  child: const Center(
                    child: Text(
                      "Verify OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, EmailLogin.id);
              },
              child: Text(
                "Login with email?",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15),
              ))
        ],
      ),
    );
  }

  void verify() {
    auth.verifyPhoneNumber(
        phoneNumber: "+91${widget.phoneNumber}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            print("login successfully");
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verficationID, int? resendtoken) {
          verficationID_received = verficationID;
          setState(() {
            otp_visible = true;
          });
        },
        codeAutoRetrievalTimeout: (String verficationID) {});
  }

  void verifycode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verficationID_received, smsCode: _otp.text);
    await auth.signInWithCredential(credential).then((value) {
      print("logged in successfully");
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => IntroSliderPage()));
    });
  }
}
