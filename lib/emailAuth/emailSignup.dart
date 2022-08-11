import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'emailLogin.dart';
class EmailSignup extends StatefulWidget {
  static String id = "EmailSignup";

  @override
  State<EmailSignup> createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _paasword = TextEditingController();
    TextEditingController _confirm_paasword = TextEditingController();
    String? email;
    String password;
    String confirmPassword;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height/20,
            ),
            Center(
              child: Image.asset("assets/images/registration.png",height: height/3.5),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign Up", style: GoogleFonts.poppins(textStyle: Constants.loginStyle)),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [

                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        // onChanged: (value){
                        //   email = value;
                        // },
                        // maxLength: 20,
                        controller: _email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.blueAccent,),
                            //   counterText: "",
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration:Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        obscureText: true,
                        controller: _paasword,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password,color: Colors.blueAccent,),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration:Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(),
                      child: TextField(
                        obscureText: true,
                        controller: _confirm_paasword,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password,color: Colors.blueAccent,),
                            border: InputBorder.none,
                            hintText: "Confirm Password",
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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      print(_email.toString());
                      print(_paasword.toString());
                      print(_confirm_paasword.text);
                      print(email);
                      // getName();
                      // if(_phoneNumber.text.isNotEmpty){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>OTP_Verification(phoneNumber: _phoneNumber.text)));
                      // }
                    },

                  ),
                  SizedBox(
                    height: height /40,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, EmailLogin.id);
                  }, child: Text("Login with email?",style: TextStyle(color: Colors.blueAccent,fontSize:15),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
