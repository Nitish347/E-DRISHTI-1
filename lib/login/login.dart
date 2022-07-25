import 'package:flutter/material.dart';
import 'package:e_drishti/login/signup.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';



class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage(),
      routes: {
        LoginPage.id : (context)=> LoginPage(),
        SignUp.id : (context)=> SignUp()
      },
    );
  }
}




class LoginPage extends StatefulWidget {
  static String id = "loginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}


TextEditingController name = new TextEditingController();
TextEditingController _phoneNumber = new TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: Constants.decorationNeumorphic2,
                child: Center(
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: Constants.decorationNeumorphic2,
                    child: Center(
                        child: CircleAvatar(radius: 80,backgroundImage: AssetImage("assets/images/sih.jpeg"),)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Text("Log In", style: Constants.loginStyle),
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
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.blueAccent)),
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
                      decoration: BoxDecoration(),
                      child: TextField(
                        controller: _phoneNumber,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
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
                          "Log in",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.id);
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue),
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

