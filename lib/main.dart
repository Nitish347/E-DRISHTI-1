import 'package:e_drishti/dashboard.dart';
import 'package:e_drishti/emailAuth/emailSignup.dart';
import 'package:e_drishti/filter/class-FILTER.dart';
import 'package:e_drishti/filter/subjetc_filter.dart';
import 'package:e_drishti/phoneAuth/login.dart';
import 'package:e_drishti/phoneAuth/otp-Page.dart';
import 'package:e_drishti/read/read.dart';
import 'package:e_drishti/splash.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'emailAuth/emailLogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Drishti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhoneLogin(),
      debugShowCheckedModeBanner: false,
      routes: {
        PhoneLogin.id: (context) => PhoneLogin(),
        EmailSignup.id: (context) => EmailSignup(),
        OTP_Verification.id: (context) => OTP_Verification(),
        EmailLogin.id: (context) => EmailLogin(),
      },
    );
  }
}
