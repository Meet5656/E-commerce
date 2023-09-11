import 'dart:convert';
import 'package:first_screen/signaccount_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class otp_screen extends StatefulWidget {
  const otp_screen({super.key});

  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 18.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 12.5.w),
              alignment: Alignment.topLeft,
              child: Text(
                "OTP",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: Color.fromARGB(255, 16, 25, 78),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 12.5.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Verify!",
                style: TextStyle(
               fontSize: 40.sp,
                  color: Color.fromARGB(255, 16, 25, 78),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 14.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Enter 4 digit OTP number.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color.fromARGB(255, 16, 25, 78),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14.w),
                  child: Text(
                    "+91-8780410415",
                    style: TextStyle(
                       fontSize: 15.sp,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.edit_outlined,
                    size: 12.5.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: PinCodeTextField(
                
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                controller: controller,
                cursorHeight: 19,
                mainAxisAlignment: MainAxisAlignment.center,
                enableActiveFill: true,
                textStyle: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  fieldOuterPadding: EdgeInsets.only(left: 1.5.w, right: 1.5.w),
                  shape: PinCodeFieldShape.box,
                  fieldWidth: 6.8.h,
                  fieldHeight: 6.8.h,
                  inactiveColor: Color.fromARGB(255, 246, 237, 240),
                  selectedColor: Colors.lightBlue,
                  activeFillColor: Color.fromARGB(255, 168, 224, 250),
                  // selectedFillColor: Color.fromARGB(255, 236, 226, 231),
                  selectedFillColor: Color(0xFFe9f3f2),
                  inactiveFillColor: Colors.white,
                  disabledColor: Colors.black,
                  activeColor: Colors.grey,
              
                  // errorBorderColor: Colors.amber,
                  //  activeBorderWidth: double.infinity,
                  borderWidth: 1,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            SizedBox(
               height: 7.h,
            ),
            Padding(
              padding:  EdgeInsets.only(right:5.w,),
              child: Text(
                "PayPal is like getting a digital wallet",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15.3.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14.5.w),
                  child: Text(
                    "you change your ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15.3.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "Resend code",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.3.sp,
                      color: Color(0xFF90c8d1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 6.h,
              width: 78.5.w,
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signaccount_screen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 16, 25, 78),
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                       fontSize: 11.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
