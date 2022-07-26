

import 'package:flutter/material.dart';
import 'package:e_drishti/login/login.dart';
import 'constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class SignUp extends StatefulWidget {

  static String id  = "signup";

  @override
  _SignUpState createState() => _SignUpState();
}
final List<String> items = [
  'Class 1','Class 2','Class 3','Class 4','Class 5','Class 6',
];
String? selectedValue;







class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: Constants.decorationNeumorphic2,
                child: Center(
                    child: CircleAvatar(radius: 45,backgroundImage: AssetImage("assets/images/sih.jpeg"),)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height /25,
            ),
            Text("Register", style: Constants.loginStyle),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
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
                      decoration: BoxDecoration(),
                      child: TextField(
                        // controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "First Name",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(),
                      child: TextField(
                        // controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Last Name",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0
                      ),
                      child:DropdownButton2(
                        hint: Text("Select Class",style: TextStyle(color: Colors.blueAccent),),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                        ),
                        items:items.map((item) => DropdownMenuItem<String>(value: item,
                            child: Text(item,style: TextStyle(fontSize: 14,color: Colors.blue),),)).toList(),
                        value: selectedValue,
                          onChanged: (value){
                          setState(() {
                            selectedValue=value as String;
                          });
                          },
                        itemHeight: 45,
                        buttonWidth: MediaQuery.of(context).size.width,
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(),
                      child: TextField(
                        // controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),Container(
                    // padding: EdgeInsets.all(.0),
                    decoration: Constants.decorationNeumorphic3,
                    child:
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(),
                      child: TextField(
                        obscureText: true,
                        // controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
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
                      decoration: BoxDecoration(),
                      child: TextField(
                        obscureText: true,
                        // controller: _phoneNumber,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                  ),
                  InkWell(
                    child: AnimatedContainer(
                      curve: Curves.fastOutSlowIn,
                      duration: Duration(seconds: 5),
                      height: 50,
                      decoration: Constants.decorationNeumorphic,
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, LoginPage.id);
                  }, child: Text("Log in",style: TextStyle(color: Colors.blueAccent),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
