import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: InkWell(
                    onTap: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: Container(
                      height: 12.h,
                      width: 12.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 0,
                              color: Color.fromARGB(255, 152, 221, 253)),
                          // color: Colors.white,
                          color: currentIndex == 0
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 3.h),
                              height: 5.2.h,
                              width: 5.2.h,
                              child: Image.asset("assest/eyess.png")),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "Eye",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "WorkSans4",
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 0
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: InkWell(
                    onTap: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      height: 12.h,
                      width: 12.h,
                      decoration: BoxDecoration(
                        color: currentIndex == 1
                            ? Color.fromARGB(255, 13, 28, 118)
                            : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0,
                            color: Color.fromARGB(255, 152, 221, 253)),
                      ),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 2.h),
                              height: 5.2.h,
                              width: 5.2.h,
                              child: Image.asset("assest/heart.jpg")),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "Heart",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "WorkSans4",
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      height: 12.h,
                      width: 12.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: currentIndex == 2
                            ? Color.fromARGB(255, 13, 28, 118)
                            : Colors.white,
                        border: Border.all(
                            width: 0,
                            color: Color.fromARGB(255, 152, 221, 253)),
                      ),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 2.h),
                              height: 5.2.h,
                              width: 5.2.h,
                              child: Image.asset("assest/face.png",
                                  color: currentIndex == 2
                                      ? Colors.white
                                      : Color.fromARGB(255, 13, 28, 118))),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "Face",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "WorkSans4",
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                        width: 0, color: Color.fromARGB(255, 152, 221, 253)),
                    color: currentIndex == 3
                        ? Color.fromARGB(255, 13, 28, 118)
                        : Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 2.h),
                          height: 5.2.h,
                          width: 5.2.h,
                          child: Image.asset("assest/teeth.png")),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "Teeth",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color:
                                currentIndex == 3 ? Colors.white : Colors.black,
                            fontFamily: "WorkSans4",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                child: Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                        width: 0, color: Color.fromARGB(255, 152, 221, 253)),
                    color: currentIndex == 4
                        ? Color.fromARGB(255, 13, 28, 118)
                        : Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 2.h),
                          height: 5.2.h,
                          width: 5.2.h,
                          child: Image.asset("assest/orthopedic1.png")),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "Bone",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color:
                                currentIndex == 4 ? Colors.white : Colors.black,
                            fontFamily: "WorkSans4",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 5;
                  });
                },
                child: Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: currentIndex == 5
                        ? Color.fromARGB(255, 13, 28, 118)
                        : Colors.white,
                    border: Border.all(
                        width: 0, color: Color.fromARGB(255, 152, 221, 253)),
                  ),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 2.h),
                          height: 5.2.h,
                          width: 5.2.h,
                          child: Image.asset("assest/pulmonology.png")),
                      Padding(
                        padding: EdgeInsets.only(top: 2.5.h),
                        child: Text(
                          "pulmonology",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color:
                                currentIndex == 5 ? Colors.white : Colors.black,
                            fontFamily: "WorkSans4",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
