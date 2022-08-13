// import 'dart:ui';
//
// // import 'package:aktu/auth/verify.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sihmain/emailAuth/emailLogin.dart';
//
// import 'otp-Page.dart';
//
// class LoginPage extends StatelessWidget {
//   static String id ="loginPage";
//   static String phoneNumber = "";
//   static String name ="";
//
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
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
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(30)),
//               height: height / 1.2,
//               width: width / 1.2,
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: height/10,
//                     ),
//                     Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white),),
//                     SizedBox(
//                       height: height/10,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(25.0),
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: Colors.grey.withOpacity(0.6)
//                         ),
//                         child:  Padding(
//                           padding:  EdgeInsets.all(8.0),
//                           child: TextField(
//                             maxLength: 20,
//
//                             onChanged: (value){
//                               name = value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             cursorColor: Colors.white,
//                             onEditingComplete: (){
//                               if(phoneNumber.toString().length>10)
//                                 print("noooo");
//                             },
//
//
//                             decoration: InputDecoration(
//                                 counterText: "",
//                                 prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.white,),
//                                 border: InputBorder.none,
//                                 hintText: "Enter Your Name",
//                                 hintStyle: TextStyle(color: Colors.white)),
//                           ),
//                         ),
//                       ),
//                     ), Padding(
//                       padding: EdgeInsets.all(25.0),
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: Colors.grey.withOpacity(0.6)
//                         ),
//                         child:  Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextField(
//                             maxLength: 10,
//
//                             onChanged: (value){
//                               phoneNumber = value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             cursorColor: Colors.white,
//                             onEditingComplete: (){
//                               if(phoneNumber.toString().length>10)
//                                 print("noooo");
//                             },
//
//
//                             decoration: InputDecoration(
//                               counterText: "",
//                               // prefix: Text("  +91"),
//                                 prefixText: ("  +91 "),
//
//                                 border: InputBorder.none,
//                                 hintText: "Phone Number",
//
//                                 hintStyle: TextStyle(color: Colors.white)),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // SizedBox(height: height/25,),
//                     Padding(
//                       padding: EdgeInsets.all(25.0),
//                       child: InkWell(
//                         onTap: (){
//                           if(phoneNumber.isNotEmpty && name.isNotEmpty)
//                           Navigator.pushNamed(context, VerifyPage.id);
//                         },
//                         child: Container(
//                           height: 50,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               gradient: LinearGradient(colors: [
//                                 Color.fromRGBO(100, 148, 251, 1),
//                                 Color.fromRGBO(100, 148, 251, .8),
//                               ])),
//                           child: Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     TextButton(onPressed: (){
//                       Navigator.pushNamed(context, EmailLogin.id);
//                     }, child: Text("Login with email?",style: TextStyle(color: Colors.white),))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sihmain/emailAuth/emailLogin.dart';
// import '../Constants/constants.dart';
import '../constants.dart';
import '../emailAuth/emailLogin.dart';
import 'otp-Page.dart';

class PhoneLogin extends StatefulWidget {
  static String id = "PhoneLogin";

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _name = TextEditingController();
  bool empty = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            Center(
              child:
                  Image.asset("assets/images/login.png", height: height / 3.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Log In",
                  style: GoogleFonts.poppins(textStyle: Constants.loginStyle)),
            ),
            empty
                ? Text(
                    "Please Enter Your Name and Phone Number",
                    style: TextStyle(color: Colors.red),
                  )
                : Text(""),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        maxLength: 20,
                        controller: _name,
                        decoration: InputDecoration(
                            // prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.blueAccent,),
                            counterText: "",
                            border: InputBorder.none,
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        maxLength: 10,
                        controller: _phoneNumber,
                        decoration: InputDecoration(
                            counterText: "",
                            border: InputBorder.none,
                            hintText: "Enter Phone Number",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      decoration: Constants.decorationNeumorphic,
                      child: const Center(
                        child: Text(
                          "Send OTP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      // getName();
                      if (_phoneNumber.text.isNotEmpty &&
                          _name.text.isNotEmpty &&
                          _phoneNumber.text.length == 10) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext) => OTP_Verification(
                                phoneNumber: _phoneNumber.text)));
                      } else {
                        setState(() {
                          empty = true;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmailLogin.id);
                      },
                      child: Text(
                        "Login with email?",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 15),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
