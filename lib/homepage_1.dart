import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class homepage_1 extends StatefulWidget {
  const homepage_1({super.key});

  @override
  State<homepage_1> createState() => _homepage_1State();
}

class _homepage_1State extends State<homepage_1> {
  int currentIndex = 0;
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
                      setState(() {
                        currentIndex = 0;
                      });
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
                              padding: EdgeInsets.only(top: 2.h),
                              height: 6.5.h,
                              width: 6.5.h,
                              child: Image.asset(
                                  "assest/coronavirus_3536556.png",
                                  color: currentIndex == 0
                                      ? Colors.white
                                      : Color.fromARGB(255, 13, 28, 118))),
                          Padding(
                            padding: EdgeInsets.only(top: 1.h),
                            child: Text(
                              "Coronavirus",
                              style: TextStyle(
                                  fontSize: 12.2.sp,
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
                      setState(() {
                        currentIndex = 1;
                      });
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
                          color: currentIndex == 1
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 2.h),
                              height: 5.2.h,
                              width: 5.2.h,
                              child: Image.asset("assest/mosquito.png",
                                  color: currentIndex == 1
                                      ? Colors.white
                                      : Color.fromARGB(255, 13, 28, 118))),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "Malaria",
                              style: TextStyle(
                                fontSize: 15.1.sp,
                                color: currentIndex == 1
                                    ? Colors.white
                                    : Colors.black,
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
                              child: Image.asset(
                                "assest/typhoid.jpg",
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "Typhoid",
                              style: TextStyle(
                                  fontSize: 14.5.sp,
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
                          child: Image.asset(
                            "assest/Lymphatic filariasis.jpg",
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "Lymphatic\n filariasis",
                          style: TextStyle(
                              fontSize: 12.5.sp,
                              fontFamily: "WorkSans4",
                              fontWeight: FontWeight.w500,
                              color: currentIndex == 3
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
                          height: 6.h,
                          width: 6.h,
                          child: Image.asset(
                            "assest/orthopedic.jpg",
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "Bone pain",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "WorkSans4",
                              fontWeight: FontWeight.w500,
                              color: currentIndex == 4
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
                          height: 6.h,
                          width: 6.h,
                          child: Image.asset("assest/migraine.png",
                              color: currentIndex == 5
                                  ? Colors.white
                                  : Color.fromARGB(255, 13, 28, 118))),
                      Padding(
                           padding: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "Migraine",
                          style: TextStyle(
                            fontSize: 13.sp,
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
