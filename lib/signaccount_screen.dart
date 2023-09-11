import 'package:first_screen/nav_screen.dart';
import 'package:first_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class signaccount_screen extends StatefulWidget {
  const signaccount_screen({super.key});

  @override
  State<signaccount_screen> createState() => _signaccount_screenState();
}

class _signaccount_screenState extends State<signaccount_screen> {
  TextEditingController _userPasswordController = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _isValid = false;
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  late bool _passwordVisible;
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  void submit() {
    final isvalid = _form.currentState!.validate();
    if (!isvalid) {
      return;
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => nav_screen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form(
          key: _form,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 8.h),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assest/paypal123.png",
                      height: 22.h,
                      width: 22.h,
                    )),
                SizedBox(
                  height: 0.5.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.w),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign in\nto Account",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "WorkSans1",
                      color: Color.fromARGB(255, 16, 25, 78),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    padding: EdgeInsets.only(left: 8.w),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "PayPal is like getting a digital wallet\nthat protects your data and helps",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans1",
                        color: Color(0xFFb5cfd0),
                      ),
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.only(left: 7.w, right: 7.w),
                  child: TextFormField(
                    style: TextStyle(fontSize: 12.sp),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFc4d7d6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.lightBlue),
                      ),
                      // filled: true,
                      fillColor: Color(0xFFe6f0ec),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 6.w, vertical: 2.3.h),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Color(
                            0xFFcfcfcf,
                          ),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field  is required';
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.only(left: 7.w, right: 7.w),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      } else {
                        bool result = validatePassword(value);
                        if (result) {
                          return null;
                        } else {
                          return null;
                        }
                      }
                    },
                    controller: _userPasswordController,
                    obscureText: !_passwordVisible,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      // filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFc4d7d6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.lightBlue),
                      ),
                      fillColor: Color(0xFFe6f0ec),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 6.w, vertical: 2.3.h),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Color(
                            0xFFcfcfcf,
                          ),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                            
                          ),
                        ),
                      ),
                    ),

                    // onTap: () {
                    //   setState(() {
                    //     _passwordVisible = !_passwordVisible;
                    //   });
                    // },
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 7.h,
                  width: 40.h,
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isValid = _form.currentState!.validate();
                      });
                      submit();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 16, 25, 78),
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "WorkSans1",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 7.h,
                  width: 40.h,
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => signaccount_screen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1197cc),
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "WorkSans1",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forget password |",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Color.fromARGB(255, 16, 25, 78),
                          fontFamily: "WorkSans1",
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      " Create Password",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "WorkSans1",
                          color: Color(0xFF84b9ca),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
