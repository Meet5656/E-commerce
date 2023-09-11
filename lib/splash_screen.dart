import 'package:first_screen/doctor_screen.dart';
import 'package:first_screen/home_screen.dart';
import 'package:first_screen/list_doctor.dart';
import 'package:first_screen/list_full.dart';
import 'package:first_screen/medicine_screen.dart';
import 'package:first_screen/nav_screen.dart';
import 'package:first_screen/main.dart';
import 'package:first_screen/onboarding_screen.dart';
import 'package:first_screen/otp_screen.dart';

import 'package:first_screen/signaccount_screen.dart';
import 'package:first_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class splash_scren extends StatefulWidget {
  const splash_scren({super.key});

  @override
  State<splash_scren> createState() => _splash_screnState();
}

class _splash_screnState extends State<splash_scren> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => nav_screen(),
        ));
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Image.asset("assest/paypal123.png"),
        ),
      ),
    );
  }
}
