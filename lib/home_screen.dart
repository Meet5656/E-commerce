// import 'package:first_screen/list/homescreen_list2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'homescreen_list2.dart';
import 'list/homescreen_list.dart';

class home_screen extends StatefulWidget {
  const home_screen({
    super.key,
  });

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int currentIndex = 0;
  //upcoming mat
  int upcoming = 0;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  List<Listitem> item = [
    Listitem("assest/doctor4.jpg", "Dr Taina Alam", "Cosmetologist",
        "assest/time.png", "Thu,Dec at 10:00 am"),
    Listitem("assest/doctor1.jpg", "Dr Gourav solanaki", "Cosmetologist",
        "assest/time.png", "Thu,Dec at 10:30 am"),
    Listitem("assest/doctor6.jpg", "Dr Aliya Alam", "Cosmetologist",
        "assest/time.png", "Thu,Dec at 11:00 am")
  ];

  List<doctorlist> doctorlist1 = [
    doctorlist("assest/doctor4.jpg", "Dr Taina Alam", "Cosmetologist", "4.8",
        "(110 Reviews)", "assest/icons8-message-50.png"),
    doctorlist("assest/doctor1.jpg", "Dr Gourav solanaki", "Dermatology",
        "4.8", "(110 Reviews)", "assest/icons8-message-50.png"),
    doctorlist("assest/doctor6.jpg", "Dr Aliya Alam", "Endocrinology`", "4.8",
        "(110 Reviews)", "assest/icons8-message-50.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 6.w),
              child: Text(
                "Find your",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontFamily: "WorkSans4",
                    fontWeight: FontWeight.w100),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.w),
                  child: Text(
                    "Specialist",
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontFamily: "WorkSans4",
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w, bottom: 2.h),
                  child: Container(
                      height: 3.h,
                      width: 3.h,
                      child: Image.asset("assest/notification.png")),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.only(
                right: 3.h,
                left: 3.h,
              ),
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
            SizedBox(
              height: 2.8.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.w,
                    ),
                    child: InkWell(
                      onTap: () {
                        currentIndex = 0;
                        setState(() {});
                      },
                      child: Container(
                        height: 11.5.h,
                        width: 14.5.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Container(
                                  height: 3.5.h,
                                  width: 3.5.h,
                                  child: Image.asset("assest/heart.jpg")),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text("Cardiologist",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: "WorkSans4",
                                    fontWeight: FontWeight.w100,
                                    // color: Colors.black
                                    color: currentIndex == 0
                                        ? Colors.white
                                        : Colors.black)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade100,
                              // offset: const Offset(10,10),
                              blurRadius: 3,
                              // spreadRadius: 3,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                          // color: Colors.white,
                          color: currentIndex == 0
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: Container(
                        height: 11.5.h,
                        width: 14.5.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Container(
                                  height: 3.5.h,
                                  width: 3.5.h,
                                  child: Image.asset("assest/eyess.png")),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text("Eye sp",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontFamily: "WorkSans4",
                                    fontWeight: FontWeight.w100,
                                    color: currentIndex == 1
                                        ? Colors.white
                                        : Colors.black)),
                          ],
                        ),
                        decoration: BoxDecoration(
                          // color: pageIndex ? Colors.indigo : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade100,
                              // offset: const Offset(10,10),
                              blurRadius: 3,
                              // spreadRadius: 3,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          borderRadius: BorderRadius.circular(20),
                          // color: _currentColor,
                          color: currentIndex == 1
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Container(
                                  height: 3.5.h,
                                  width: 3.5.h,
                                  child: Image.asset("assest/barin.png")),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Neuroscience",
                              style: TextStyle(
                                  fontFamily: "WorkSans4",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w100,
                                  color: currentIndex == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade100,
                              // offset: const Offset(10,10),
                              blurRadius: 3,
                              // spreadRadius: 3,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          // color:
                          //     true == pageIndex ? Colors.white : Colors.indigo,
                          // color: Colors.white,
                          color: currentIndex == 2
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 11.5.h,
                        width: 14.5.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Container(
                                  height: 3.5.h,
                                  width: 3.5.h,
                                  child: Image.asset("assest/orthopedic.jpg")),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Orthopedic",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: "WorkSans4",
                                  fontWeight: FontWeight.w100,
                                  color: currentIndex == 3
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade100,
                              // offset: const Offset(10,10),
                              blurRadius: 3,
                              // spreadRadius: 3,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: currentIndex == 3
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 11.5.h,
                        width: 14.5.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 6.w),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 4;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h),
                              child: Container(
                                  height: 3.5.h,
                                  width: 3.5.h,
                                  child: Image.asset("assest/pulmonology.png")),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Pulmonology",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: "WorkSans4",
                                  fontWeight: FontWeight.w100,
                                  color: currentIndex == 4
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade100,
                              // offset: const Offset(10,10),
                              blurRadius: 3,
                              // spreadRadius: 3,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: currentIndex == 4
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 11.5.h,
                        width: 14.5.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    "Popular Doctor",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "WorkSans1",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 38.w),
                  child: Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "WorkSans1",
                        color: Color(0xFF33369a)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.5.h,
            ),





            //first
            Container(
              width: SizerUtil.width,
              height: 10.5.h,
              child: ListView.builder(
                  itemCount: doctorlist1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 3.2.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.8),
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 1.h,
                                bottom: 1.h,
                              ),
                              width: 65.w,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 0, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2.h))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: CircleAvatar(
                                      radius: 3.h,
                                      backgroundImage:
                                          AssetImage(doctorlist1[index].image),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        doctorlist1[index].namee,
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: "WorkSans4",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 5.w, top: 0.5.h),
                                        child: Text(
                                          doctorlist1[index].medicine,
                                          style: TextStyle(
                                              fontSize:10.sp,
                                              fontFamily: "WorkSans4",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 3.w,
                                                top: 0.5.h,
                                                bottom: 0.8.h),
                                            child: Icon(
                                              Icons.star,
                                              size: 2.h,
                                              color: Color(0xFF36c8ff),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 1.h,
                                                top: 0.5.h,
                                                left: 0.5.w),
                                            child: Text(
                                              doctorlist1[index].Starnumber,
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontFamily: "WorkSans4",
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 0.5.h,left: 0.5.h),
                                            child: Text(
                                              doctorlist1[index].Reviews,
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontFamily: "WorkSans4"),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                      padding: EdgeInsets.only(right: 1.h),
                                      child: Image.asset(
                                        doctorlist1[index].message,
                                        color: Color(0xFF2f3398),
                                        height: 2.5.h,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            //   scrollDirection: Axis.horizontal,
            //   padding: EdgeInsets.only(left: 4.h, top: 1.h, bottom: 1.h),
            //   child: Row(
            //     children: [
            //       Container(
            //         padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h),
            //         decoration: BoxDecoration(
            //             border: Border.all(width: 0),
            //             borderRadius: BorderRadius.all(Radius.circular(2.5.h))),
            //         // height: 10.5.h,
            //         width: 65.w,
            //         child: Column(
            //           children: [
            //             Stack(
            //               children: [
            //                 Container(
            //                   padding: EdgeInsets.only(
            //                     top: 1.h,
            //                   ),
            //                   alignment: Alignment.topLeft,
            //                   child: Positioned(
            //                       child: CircleAvatar(
            //                     radius: 3.8.h,
            //                     backgroundImage: AssetImage(
            //                       "assest/doctor1.jpg",
            //                     ),
            //                     backgroundColor: Colors.white,
            //                   )),
            //                 ),
            //                 Container(
            //                   padding: EdgeInsets.only(top: 3.5.h, right: 2.w),
            //                   alignment: Alignment.topRight,
            //                   child: Image.asset(
            //                     "assest/icons8-message-50.png",
            //                     color: Color.fromARGB(255, 22, 40, 145),
            //                     height: 2.8.h,
            //                     width: 2.8.h,
            //                   ),
            //                 ),
            //                 Column(
            //                   children: [
            //                     Container(
            //                       alignment: Alignment.topCenter,
            //                       child: Padding(
            //                         padding:
            //                             EdgeInsets.only(left: 1.w, top: 1.h),
            //                         child: Text(
            //                           "Dr Gourav solanaki",
            //                           style: TextStyle(
            //                               fontSize: 12.sp,
            //                               fontFamily: "WorkSans1",
            //                               fontWeight: FontWeight.w800),
            //                         ),
            //                       ),
            //                     ),
            //                     Container(
            //                       padding:
            //                           EdgeInsets.only(right: 11.w, top: 0.5.h),
            //                       child: Text(
            //                         "Dermatology",
            //                         style: TextStyle(
            //                           fontSize: 11.sp,
            //                           fontFamily: "WorkSans1",
            //                         ),
            //                       ),
            //                     ),
            //                     Row(
            //                       children: [
            //                         Container(
            //                             padding: EdgeInsets.only(
            //                               left: 15.5.w,
            //                               top: 0.5.h,
            //                             ),
            //                             alignment: Alignment.topLeft,
            //                             child: Icon(
            //                               Icons.star,
            //                               size: 2.h,
            //                               color: Colors.blue,
            //                             )),
            //                         SizedBox(
            //                           width: 0.9.w,
            //                         ),
            //                         Padding(
            //                           padding: EdgeInsets.only(
            //                             top: 0.5.h,
            //                           ),
            //                           child: Text(
            //                             "4.8",
            //                             style: TextStyle(
            //                                 fontFamily: "WorkSans1",
            //                                 fontSize: 11.sp,
            //                                 fontWeight: FontWeight.bold),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           width: 0.9.w,
            //                         ),
            //                         Padding(
            //                           padding: EdgeInsets.only(top: 0.5.h),
            //                           child: Text(
            //                             "(110 Reviews)",
            //                             style: TextStyle(
            //                               fontSize: 11.sp,
            //                               fontFamily: "WorkSans1",
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //       SingleChildScrollView(
            //         padding:
            //             EdgeInsets.only(left: 2.4.h, top: 1.h, bottom: 1.h),
            //         child: Container(
            //           padding:
            //               EdgeInsets.only(left: 4.w, top: 1.2.h, bottom: 1.2.h),
            //           decoration: BoxDecoration(
            //               border: Border.all(width: 0),
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(2.5.h))),
            //           // height: 10.5.h,
            //           width: 65.w,
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Container(
            //                     padding: EdgeInsets.only(
            //                       top: 1.h,
            //                     ),
            //                     alignment: Alignment.topLeft,
            //                     child: Positioned(
            //                         child: CircleAvatar(
            //                       radius: 3.5.h,
            //                       backgroundImage: AssetImage(
            //                         "assest/doctor2.jpg",
            //                       ),
            //                       backgroundColor: Colors.white,
            //                     )),
            //                   ),
            //                   Container(
            //                     padding:
            //                         EdgeInsets.only(top: 3.3.h, right: 2.w),
            //                     alignment: Alignment.topRight,
            //                     child: Image.asset(
            //                       "assest/icons8-message-50.png",
            //                       color: Color.fromARGB(255, 22, 40, 145),
            //                       height: 2.8.h,
            //                       width: 2.8.h,
            //                     ),
            //                   ),
            //                   Column(
            //                     children: [
            //                       Container(
            //                         alignment: Alignment.topCenter,
            //                         child: Padding(
            //                           padding: EdgeInsets.only(
            //                               left: 1.w, top: 1.h, right: 2.w),
            //                           child: Text(
            //                             "Dr Zeel Vaghela",
            //                             style: TextStyle(
            //                                 fontSize: 12.sp,
            //                                 fontFamily: "WorkSans1",
            //                                 fontWeight: FontWeight.w800),
            //                           ),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding:
            //                             EdgeInsets.only(right: 4.w, top: 0.5.h),
            //                         child: Text(
            //                           "Eyes specialist",
            //                           style: TextStyle(
            //                             fontSize: 11.sp,
            //                             fontFamily: "WorkSans1",
            //                           ),
            //                         ),
            //                       ),
            //                       Row(
            //                         children: [
            //                           Container(
            //                               padding: EdgeInsets.only(
            //                                 left: 17.w,
            //                                 top: 0.5.h,
            //                               ),
            //                               alignment: Alignment.topLeft,
            //                               child: Icon(
            //                                 Icons.star,
            //                                 size: 2.h,
            //                                 color: Colors.blue,
            //                               )),
            //                           SizedBox(
            //                             width: 0.9.w,
            //                           ),
            //                           Padding(
            //                             padding: EdgeInsets.only(top: 0.5.h),
            //                             child: Text(
            //                               "4.8",
            //                               style: TextStyle(
            //                                   fontSize: 11.sp,
            //                                   fontFamily: "WorkSans1",
            //                                   fontWeight: FontWeight.bold),
            //                             ),
            //                           ),
            //                           SizedBox(
            //                             width: 0.9.w,
            //                           ),
            //                           Padding(
            //                             padding: EdgeInsets.only(top: 0.5.h),
            //                             child: Text(
            //                               "(110 Reviews)",
            //                               style: TextStyle(
            //                                 fontFamily: "WorkSans1",
            //                                 fontSize: 11.sp,
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       )
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SingleChildScrollView(
            //         padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
            //         child: Padding(
            //           padding: EdgeInsets.only(left: 4.w, right: 5.w),
            //           child: Container(
            //             decoration: BoxDecoration(
            //                 border: Border.all(width: 0),
            //                 borderRadius:
            //                     BorderRadius.all(Radius.circular(2.5.h))),
            //             // height: 10.5.h,
            //             width: 65.w,
            //             child: Column(
            //               children: [
            //                 Stack(
            //                   children: [
            //                     Container(
            //                       padding:
            //                           EdgeInsets.only(top: 1.8.h, left: 3.w),
            //                       alignment: Alignment.topLeft,
            //                       child: Positioned(
            //                           child: CircleAvatar(
            //                         radius: 3.5.h,
            //                         backgroundImage: AssetImage(
            //                           "assest/doctor3.jpg",
            //                         ),
            //                         backgroundColor: Colors.white,
            //                       )),
            //                     ),
            //                     Container(
            //                       padding:
            //                           EdgeInsets.only(top: 4.h, right: 2.w),
            //                       alignment: Alignment.topRight,
            //                       child: Image.asset(
            //                         "assest/icons8-message-50.png",
            //                         color: Color.fromARGB(255, 22, 40, 145),
            //                         height: 2.8.h,
            //                         width: 2.8.h,
            //                       ),
            //                     ),
            //                     Column(
            //                       children: [
            //                         Container(
            //                           alignment: Alignment.topCenter,
            //                           child: Padding(
            //                             padding: EdgeInsets.only(
            //                                 left: 2.w, top: 1.9.h, right: 1.w),
            //                             child: Text(
            //                               "Dr Harsh solanaki",
            //                               style: TextStyle(
            //                                   fontSize: 12.sp,
            //                                   fontFamily: "WorkSans1",
            //                                   fontWeight: FontWeight.w800),
            //                             ),
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: EdgeInsets.only(
            //                               right: 8.w, top: 0.5.h),
            //                           child: Text(
            //                             "Neurosurgeon",
            //                             style: TextStyle(
            //                                 fontSize: 11.sp,
            //                                 fontFamily: "WorkSans1"),
            //                           ),
            //                         ),
            //                         Row(
            //                           children: [
            //                             Container(
            //                                 padding: EdgeInsets.only(
            //                                   left: 18.w,
            //                                   top: 0.5.h,
            //                                 ),
            //                                 alignment: Alignment.topLeft,
            //                                 child: Icon(
            //                                   Icons.star,
            //                                   size: 2.h,
            //                                   color: Colors.blue,
            //                                 )),
            //                             SizedBox(
            //                               width: 0.9.w,
            //                             ),
            //                             Padding(
            //                               padding: EdgeInsets.only(top: 0.5.h),
            //                               child: Text(
            //                                 "4.8",
            //                                 style: TextStyle(
            //                                     fontSize: 11.sp,
            //                                     fontFamily: "WorkSans1",
            //                                     fontWeight: FontWeight.bold),
            //                               ),
            //                             ),
            //                             SizedBox(
            //                               width: 0.9.w,
            //                             ),
            //                             Padding(
            //                               padding: EdgeInsets.only(top: 0.5.h),
            //                               child: Text(
            //                                 "(110 Reviews)",
            //                                 style: TextStyle(
            //                                   fontSize: 11.sp,
            //                                   fontFamily: "WorkSans1",
            //                                 ),
            //                               ),
            //                             ),
            //                           ],
            //                         )
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 2.5.h,
            ),
            Container(
                padding: EdgeInsets.only(left: 8.w),
                alignment: Alignment.topLeft,
                child: Text(
                  "Upcoming Appointment",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "WorkSans1",
                  ),
                )),
            SizedBox(
              height: 2.5.h,
            ),

            Container(
              height: 15.h,
              width: SizerUtil.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.w),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          child: Container(
                            height: 16.h,
                            width: 35.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink.shade100,
                                    // offset: const Offset(10,10),
                                    blurRadius: 3,
                                    // spreadRadius: 3,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                // color: Color.fromARGB(255, 38, 51, 130),
                                color: index == 0
                                    ? Color.fromARGB(255, 13, 28, 118)
                                    : Colors.white),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 2.h,
                                  left: 6.w,
                                  child: CircleAvatar(
                                    radius: 3.h,
                                    backgroundImage:
                                        AssetImage(item[index].image!),
                                  ),
                                ),
                                Positioned(
                                  top: 2.h,
                                  right: 2.5.w,
                                  child: Icon(Icons.more_vert,
                                      size: 3.h,
                                      // color: Colors.white54,
                                      // color: Colors.blue[50],
                                      color: index == 0
                                          ? Colors.white54
                                          : Color.fromARGB(255, 38, 51, 130)),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topCenter,
                                      padding: EdgeInsets.only(
                                          right: 0.3.w, top: 2.5.h),
                                      child: Text(
                                        item[index].name,
                                        style: TextStyle(
                                            fontSize: 13.5.sp,
                                            fontFamily: "WorkSans1",
                                            color: index == 0
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    255, 38, 51, 130),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: 7.w, top: 0.5.h),
                                      child: Text(
                                        item[index].description,
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontFamily: "WorkSans2",
                                          color: index == 0
                                              ? Colors.white
                                              : Color.fromARGB(
                                                  255, 38, 51, 130),
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 10.h,
                                  left: 6.w,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        height: 3.2.h,
                                        // width: 43.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: index == 0
                                              ? Colors.white12
                                              : Colors.blue[50],
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  left: 2.w,
                                                  top: 0.1.h,
                                                ),
                                                child: Image.asset(
                                                  item[index].clockimage,
                                                  color: index == 0
                                                      ? Colors.white
                                                      : Color.fromARGB(
                                                          255, 38, 51, 130),
                                                  height: 3.5.h,
                                                  width: 3.5.w,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 2.w,
                                                top: 0.1.h,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 2.5.w),
                                                child: Text(
                                                  item[index].datetime,
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontFamily: "WorkSans3",
                                                    fontWeight: FontWeight.w900,
                                                    color: index == 0
                                                        ? Colors.white
                                                        : Color.fromARGB(
                                                            255, 38, 51, 130),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(left: 7.w),
            //         child: InkWell(
            //           onTap: () {
            //             setState(() {
            //               upcoming = 0;
            //             });
            //           },
            //           child: Container(
            //             height: 16.h,
            //             width: 35.h,
            //             decoration: BoxDecoration(
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.pink.shade100,
            //                     // offset: const Offset(10,10),
            //                     blurRadius: 3,
            //                     // spreadRadius: 3,
            //                   ), //BoxShadow
            //                   BoxShadow(
            //                     color: Colors.white,
            //                     offset: const Offset(0.0, 0.0),
            //                     blurRadius: 6.0,
            //                     spreadRadius: 0.0,
            //                   ), //BoxShadow
            //                 ],
            //                 borderRadius: BorderRadius.all(Radius.circular(20)),
            //                 // color: Color.fromARGB(255, 38, 51, 130),
            //                 color: upcoming == 0
            //                     ? Color.fromARGB(255, 13, 28, 118)
            //                     : Colors.white),
            //             child: Stack(
            //               children: [
            //                 Positioned(
            //                   top: 2.h,
            //                   left: 6.w,
            //                   child: CircleAvatar(
            //                     radius: 32,
            //                     backgroundImage: AssetImage(
            //                       "assest/doctor4.jpg",
            //                     ),
            //                   ),
            //                 ),
            // Positioned(
            //   top: 2.h,
            //   right: 2.5.w,
            //   child: Icon(Icons.more_vert,
            //       size: 3.h,
            //       // color: Colors.white54,
            //       // color: Colors.blue[50],
            //       color: upcoming == 0
            //           ? Colors.white54
            //           : Color.fromARGB(255, 38, 51, 130)),
            //                 ),
            //                 Column(
            //                   children: [
            //                     Container(
            //                       alignment: Alignment.topCenter,
            //                       padding:
            //                           EdgeInsets.only(right: 0.3.w, top: 2.5.h),
            //                       child: Text(
            //                         "Dr Tania Alam",
            //                         style: TextStyle(
            //                             fontSize: 16.sp,
            //                             fontFamily: "WorkSans1",
            //                             color: upcoming == 0
            //                                 ? Colors.white
            //                                 : Color.fromARGB(255, 38, 51, 130),
            //                             fontWeight: FontWeight.w500),
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:
            //                           EdgeInsets.only(right: 6.w, top: 0.5.h),
            //                       child: Text(
            //                         "Cosmetologist",
            //                         style: TextStyle(
            //                           fontSize: 12.5.sp,
            //                           fontFamily: "WorkSans2",
            //                           color: upcoming == 0
            //                               ? Colors.white
            //                               : Color.fromARGB(255, 38, 51, 130),
            //                           fontWeight: FontWeight.w900,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Positioned(
            //                   top: 10.h,
            //                   left: 6.w,
            //                   child: Row(
            //                     children: [
            //                       Container(
            //                         alignment: Alignment.topLeft,
            //                         height: 3.2.h,
            //                         width: 43.w,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(10),
            //                           color: upcoming == 0
            //                               ? Colors.white12
            //                               : Colors.blue[50],
            //                         ),
            //                         child: Row(
            //                           children: [
            //                             Padding(
            //                                 padding: EdgeInsets.only(
            //                                   left: 2.w,
            //                                   top: 0.1.h,
            //                                 ),
            //                                 child: Image.asset(
            //                                   "assest/time.png",
            //                                   color: upcoming == 0
            //                                       ? Colors.white
            //                                       : Color.fromARGB(
            //                                           255, 38, 51, 130),
            //                                   height: 3.5.h,
            //                                   width: 3.5.w,
            //                                 )),
            //                             Padding(
            //                               padding: EdgeInsets.only(
            //                                 left: 2.w,
            //                                 top: 0.1.h,
            //                               ),
            //                               child: Text(
            //                                 "Thu, Dec at 10:00 am",
            //                                 style: TextStyle(
            //                                   fontSize: 13.sp,
            //                                   fontFamily: "WorkSans3",
            //                                   fontWeight: FontWeight.w900,
            //                                   color: upcoming == 0
            //                                       ? Colors.white
            //                                       : Color.fromARGB(
            //                                           255, 38, 51, 130),
            //                                 ),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(left: 7.w, right: 6.5.w),
            //       child: InkWell(
            //         onTap: () {
            //           upcoming = 1;
            //           setState(() {});
            //         },
            //         child: Container(
            //           height: 16.h,
            //           width: 35.h,
            //           decoration: BoxDecoration(
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.pink.shade100,
            //                   // offset: const Offset(10,10),
            //                   blurRadius: 3,
            //                   // spreadRadius: 3,
            //                 ), //BoxShadow
            //                 BoxShadow(
            //                   color: Colors.white,
            //                   offset: const Offset(0.0, 0.0),
            //                   blurRadius: 6.0,
            //                   spreadRadius: 0.0,
            //                 ), //BoxShadow
            //               ],
            //               borderRadius:
            //                   BorderRadius.all(Radius.circular(20)),
            //               // color: Color.fromARGB(255, 38, 51, 130),
            //               color: upcoming == 1
            //                   ? Color.fromARGB(255, 13, 28, 118)
            //                   : Colors.white),
            //           child: Stack(
            //             children: [
            //               Positioned(
            //                 top: 2.h,
            //                 left: 6.w,
            //                 child: CircleAvatar(
            //                   radius: 30,
            //                   backgroundImage: AssetImage(
            //                     "assest/doctor3.jpg",
            //                   ),
            //                 ),
            //               ),
            //               Positioned(
            //                 top: 2.h,
            //                 right: 2.5.w,
            //                 child: Icon(Icons.more_vert,
            //                     size: 3.h,
            //                     color: upcoming == 1
            //                         ? Colors.white54
            //                         : Color.fromARGB(255, 38, 51, 130)),
            //               ),
            //               Column(
            //                 children: [
            //                   Container(
            //                     alignment: Alignment.topCenter,
            //                     padding: EdgeInsets.only(
            //                         right: 0.3.w, top: 2.5.h),
            //                     child: Text(
            //                       "Dr Rahul patel",
            //                       style: TextStyle(
            //                           fontSize: 16.sp,
            //                           fontFamily: "WorkSans1",
            //                           // color: Colors.white,
            //                           color: upcoming == 1
            //                               ? Colors.white
            //                               : Color.fromARGB(
            //                                   255, 38, 51, 130),
            //                           fontWeight: FontWeight.w500),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.only(
            //                         right: 10.w, top: 0.5.h),
            //                     child: Text(
            //                       "Dermatology",
            //                       style: TextStyle(
            //                           fontFamily: "WorkSans2",
            //                           fontSize: 12.5.sp,
            //                           color: upcoming == 1
            //                               ? Colors.white
            //                               : Color.fromARGB(
            //                                   255, 38, 51, 130),
            //                           // color: Colors.white,
            //                           fontWeight: FontWeight.w800),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Positioned(
            //                 top: 10.h,
            //                 left: 6.w,
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                       alignment: Alignment.topLeft,
            //                       height: 3.2.h,
            //                       width: 43.w,
            //                       decoration: BoxDecoration(
            //                         borderRadius:
            //                             BorderRadius.circular(10),
            //                         color: upcoming == 0
            //                             ? Colors.blue[50]
            //                             : Colors.white12,
            //                       ),
            //                       child: Row(
            //                         children: [
            //                           Padding(
            //                               padding: EdgeInsets.only(
            //                                 left: 2.w,
            //                                 top: 0.3.h,
            //                               ),
            //                               child: Image.asset(
            //                                 "assest/time.png",
            //                                 color: upcoming == 0
            //                                     ? Color.fromARGB(
            //                                         255, 38, 51, 130)
            //                                     : Colors.white,
            //                                 height: 3.5.h,
            //                                 width: 3.5.w,
            //                               )),
            //                           Padding(
            //                             padding: EdgeInsets.only(
            //                               left: 2.w,
            //                               top: 0.1.h,
            //                             ),
            //                             child: Text(
            //                               "Thu, Dec at 10:00 am",
            //                               style: TextStyle(
            //                                 fontSize: 13.sp,
            //                                 fontFamily: "WorkSans3",
            //                                 fontWeight: FontWeight.w900,
            //                                 color: upcoming == 0
            //                                     ? Color.fromARGB(
            //                                         255, 38, 51, 130)
            //                                     : Colors.white,
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // ],
            // ),
            // ),
          ],
        ),
      )),
    );
  }
}
