import 'package:first_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // padding: EdgeInsets.only(top: 14.h),
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            "assest/paypal123.png",
            height: 7.h,
            width: 25.h,
          ),
        
          Text(
            "  PayPal Holdings is an American",
            style: TextStyle(fontSize: 15.sp, color: Color(0xFF95a0a9)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Fast & Secure",
            style: TextStyle(
                fontSize: 25.sp,
                color: Color.fromARGB(255, 16, 25, 78),
                fontWeight: FontWeight.bold,
                fontFamily: "WorkSans",
                fontStyle: FontStyle.italic),
          ),
          Text(
            "          PayPal Holdings is an \nAmerican multinational financial",
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: "WorkSans1",
              color: Color(0xFF87adc6),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Container(
            height: 6.5.h,
        width: 38.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(69, 16, 25, 78), //New
                  blurRadius: 3.0,
                  offset: Offset(0, 8),
                  //  spreadRadius: 2,
                  // blurRadius: 7,
                ),
              ],
            ),
            child: Container(
              height: 6.5.h,
              width: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor:
                        Color.fromARGB(255, 16, 25, 78) // Background color
                    ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => otp_screen(),
                      ));
                },
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                ), // trying to move to the bottom
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Create a new account",
            style: TextStyle(
                fontSize: 15.sp,
                color: Color.fromARGB(255, 16, 25, 78),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
