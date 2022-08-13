// import 'dart:ui';
//
// // import 'package:aktu/auth/verify.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sihmain/emailAuth/emailSignup.dart';
// import 'package:sihmain/phoneAuth/login.dart';
//
// import '../phoneAuth/otp-Page.dart';
//
// // import 'otp-Page.dart';
//
// class EmailLogin extends StatelessWidget {
//   static String id ="login";
//   static String email = "";
//   static String password ="";
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
//                             onChanged: (value){
//                               password = value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             cursorColor: Colors.white,
//                             onEditingComplete: (){
//                               if(email.toString().length>10)
//                                 print("noooo");
//                             },
//
//
//                             decoration: InputDecoration(
//
//                                 prefixIcon: Icon(Icons.mail_outline_rounded,color: Colors.white,),
//                                 border: InputBorder.none,
//                                 hintText: "Email",
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
//                             obscureText: true,
//                             onChanged: (value){
//                               email = value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             cursorColor: Colors.white,
//                             onEditingComplete: (){
//                               if(email.toString().length>10)
//                                 print("noooo");
//                             },
//
//
//                             decoration: InputDecoration(
//                               // prefix: Text("  +91"),
//                               //   prefixText: ("  +91 "),
//                               prefixIcon: Icon(Icons.password,color: Colors.white,),
//
//                                 border: InputBorder.none,
//                                 hintText: "Password",
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
//                           // Navigator.pushNamed(context, VerifyPage.id);
//                         },
//                         child: Container(
//                           height: 50,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               gradient: LinearGradient(colors: [
//                                 Color.fromRGBO(100, 148, 251, 1),
//                                 Color.fromRGBO(100, 148, 251, .6),
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
//                       Navigator.pushNamed(context, EmailSignup.id );
//                     }, child: Text("SignUp?",style: TextStyle(color: Colors.white),)),
//                     TextButton(onPressed: (){
//                       Navigator.pushNamed(context, LoginPage.id );
//                     }, child: Text("Login with Phone Number",style: TextStyle(color: Colors.white),)),
//
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

import 'package:e_drishti/intro_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sihmain/emailAuth/emailSignup.dart';

import '../constants.dart';
import '../phoneAuth/login.dart';
import 'emailSignup.dart';

class EmailLogin extends StatefulWidget {
  static String id = "EmailLogin";

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final _auth = FirebaseAuth.instance;
  String? emailLogin;
  String? passwordLogin;
  bool error = false;
  bool loading = false;
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
                  Image.asset("assets/images/email.png", height: height / 3.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Log In",
                  style: GoogleFonts.poppins(textStyle: Constants.loginStyle)),
            ),
            error
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
                        onChanged: (value) {
                          setState(() {
                            emailLogin = value;
                          });
                        },
                        // maxLength: 20,
                        // controller: _emailLogin,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blueAccent,
                            ),
                            //   counterText: "",
                            border: InputBorder.none,
                            hintText: "Email",
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
                        onChanged: (value) {
                          setState(() {
                            passwordLogin = value;
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: Colors.blueAccent,
                            ),
                            border: InputBorder.none,
                            hintText: "Password",
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
                      child: Center(
                        child: loading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                    onTap: () async {
                      setState(() {
                        loading = true;
                      });
                      print(emailLogin);
                      print(passwordLogin);
                      try {
                        final User = await _auth.signInWithEmailAndPassword(
                            email: emailLogin!, password: passwordLogin!);
                        if (User != null)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IntroSliderPage()));
                      } catch (e) {
                        print(e);
                        setState(() {
                          error = true;
                          loading = false;
                        });
                      }
                      // print(_emailLogin.toString());
                      // print(_paaswordLogin.toString());
                      // getName();
                      // if(_phoneNumber.text.isNotEmpty){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>OTP_Verification(phoneNumber: _phoneNumber.text)));
                      // }
                    },
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EmailSignup.id);
                      },
                      child: Text(
                        "SignUp?",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 15),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PhoneLogin.id);
                      },
                      child: Text(
                        "Login with Phone Number?",
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
