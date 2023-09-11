import 'package:first_screen/home_screen.dart';
import 'package:first_screen/homepage.dart';
import 'package:first_screen/homepage_1.dart';
import 'package:first_screen/medicine_screen.dart';
import 'package:first_screen/otp_screen.dart';
import 'package:first_screen/signaccount_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class doctor_screen extends StatefulWidget {
  const doctor_screen({super.key});

  @override
  State<doctor_screen> createState() => _doctor_screen2State();
}

class _doctor_screen2State extends State<doctor_screen> {
  bool pageIndex = true;
  final pages = [
    home_screen(),
    otp_screen(),
  ];

  void onCLick(isCLick) {
    pageIndex = isCLick;
    setState(() {});
  }

  @override
  void initState() {
    onCLick(pageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 3.h, left: 7.w),
              child: Text(
                "Doctors",
                style: TextStyle(
                    fontSize: 18.5.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: "WorkSans1"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.5.w, right: 6.5.w, top: 2.h),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 14.sp),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(
                      left: 2.h, right: 2.h, top: 2.h, bottom: 2.h),
                  hintText: "Search Doctor..",
                  hintStyle:
                      TextStyle(color: Color(0xFFa6afbd), fontSize: 14.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFd4d9e0), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: Padding(
                      padding:
                          EdgeInsets.only(right: 3.w, bottom: 1.h, top: 1.h),
                      child: Container(
                          height: 3.h,
                          width: 3.h,
                          child: Image.asset(
                            "assest/search.png",
                            color: Colors.indigo,
                          ))),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 3.h, left: 8.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Available Doctors",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "WorkSans4"),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 2.w, left: 5.w),
                    child: Container(
                      height: 20.h,
                      width: 19.h,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFFd5d9e0)),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(1.5.h))),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Container(
                                height: 7.h,
                                width: 14.w,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "assest/doctor1.jpg",
                                  ),
                                  backgroundColor: Colors.blue,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 5.h,
                                          left: 10.w,
                                          child: Container(
                                            height: 1.9.h,
                                            width: 4.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1.5),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25),
                                              ),
                                              color: Color(0xFF12b76a),
                                            ),
                                          ))
                                    ],
                                  ),
                                )),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 1.5.h),
                              child: Text(
                                "Dr Shahin Alam",
                                style: TextStyle(
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "WorkSans1"),
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 0.5.h),
                            child: Text(
                              "Cardiologist",
                              style: TextStyle(
                                  fontSize: 11.5.sp,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "WorkSans1"),
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 11.sp,
                              ),
                              Text(
                                " 4.8",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    fontFamily: "WorkSans1"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 2.w, left: 1.w),
                    child: Container(
                      height: 20.h,
                      width: 20.h,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFFd5d9e0)),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(1.5.h))),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Container(
                                height: 7.h,
                                width: 15.w,
                                decoration: BoxDecoration(),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "assest/doctor4.jpg",
                                  ),
                                  backgroundColor: Colors.blue,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 5.h,
                                          left: 10.w,
                                          child: Container(
                                            height: 1.9.h,
                                            width: 4.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1.5),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25),
                                              ),
                                              color: Color(0xFF12b76a),
                                            ),
                                          ))
                                    ],
                                  ),
                               
                                )),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 1.5.h),
                              child: Text(
                                "Dr Tania Alam",
                                style: TextStyle(
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "WorkSans1"),
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 0.5.h),
                            child: Text(
                              "Endocrinology",
                              style: TextStyle(
                                  fontSize: 11.5.sp,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "WorkSans1"),
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 11.sp,
                              ),
                              Text(
                                " 5.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    fontFamily: "WorkSans1"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                  ),
                  child: Container(
                    height: 6.5.h,
                    width: 88.5.w,
                    decoration: BoxDecoration(
                        color: Color(0XFFf7f7ff),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              pageIndex == true;
                              onCLick(true);
                              setState(() {});
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 0.7.w),
                                child: Container(
                                  height: 5.5.h,
                                  width: 19.h,
                                  decoration: BoxDecoration(
                                      color: pageIndex == true
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24))),
                                  child: Center(
                                    child: Text(
                                      "Categories",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: "WorkSans1",
                                          color: pageIndex == true
                                              ? Color(0xFF9395ca)
                                              : Color(0xFFcbcbe5),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ))
                          
                            ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                onCLick(false);
                                pageIndex == false;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Container(
                                  height: 5.5.h,
                                  width: 19.h,
                                decoration: BoxDecoration(
                                    color: pageIndex == true
                                        ? Color(0XFFf7f7ff)
                                        : Color(0xFFffffff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(24))),
                                child: Padding(
                                  padding:
                                       EdgeInsets.only(left: 10.w, top: 1.5.h),
                                  child: Text(
                                    "Symptoms",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: "WorkSans1",
                                        color: pageIndex == true
                                            ? Color(0xFFcbcbe5)
                                            : Color(0xFF9395ca),
                                        // Color(0xFF9395ca)
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            pageIndex == true ? homepage() : homepage_1(),
          ],
        ),
      ),
    ));
  }
}
