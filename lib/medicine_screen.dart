import 'package:first_screen/profile_scrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class medicine_screen extends StatefulWidget {
  const medicine_screen({super.key});

  @override
  State<medicine_screen> createState() => _medicine_screenState();
}

class _medicine_screenState extends State<medicine_screen> {
  int currentIndex = 0;

  void initState() {
    currentIndex = 0;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
        body: SingleChildScrollView(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
          child: Column(children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 3.9.h, left: 7.w),
                  child: Text(
                    "Medicine",
                    style: TextStyle(
                        fontSize: 18.5.sp,
                        fontWeight: FontWeight.w900,
                        fontFamily: "WorkSans1"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profile_screen(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 50.w, top: 3.5.h),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assest/manicon.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
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
                  hintText: "Search Medicine..",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 1),
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
              padding: EdgeInsets.only(top: 2.5.h, left: 7.w),
              alignment: Alignment.topLeft,
              child: Text(
                "Medicine categories",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w900,
                    fontFamily: "WorkSans4"),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Row(
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
                      decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 241, 241, 241),
                          color: currentIndex == 0
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color(0xFFf2f4f7),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                      height: 12.5.h,
                      width: 26.w,
                      child: Padding(
                        padding: EdgeInsets.all(2.5.h),
                        child: Container(
                            child: Image.asset(
                          "assest/coronavirus_3536556.png",
                          color: currentIndex == 0
                              ? Colors.white
                              : Color.fromARGB(255, 13, 28, 118),
                          // fit: BoxFit.contain,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: InkWell(
                    onTap: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      height: 12.5.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                          color: currentIndex == 1
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color(0xFFf2f4f7),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                      child: Padding(
                        // padding: const EdgeInsets.all(15.0),
                        padding:
                            EdgeInsets.only(left: 6.w, right: 2.w, bottom: 1.w),
                        child: Container(
                            child: Image.asset(
                          "assest/face.png",
                          color: currentIndex == 1
                              ? Colors.white
                              : Color.fromARGB(255, 13, 28, 118),
                          // fit: BoxFit.contain,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: InkWell(
                    onTap: () {
                      currentIndex = 2;
                      setState(() {});
                    },
                    child: Container(
                      height: 12.5.h,
                      width: 26.w,
                      child: Padding(
                        padding: EdgeInsets.all(2.5.h),
                        child: Container(
                            padding: EdgeInsets.only(left: 2.5.w),
                            child: Image.asset(
                              "assest/medicine.png",
                              color: currentIndex == 2
                                  ? Colors.white
                                  : Color.fromARGB(255, 13, 28, 118),
                              // fit: BoxFit.contain,
                            )),
                      ),
                      decoration: BoxDecoration(
                          color: currentIndex == 2
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color(0xFFf2f4f7),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.w, top: 1.h),
                  child: Text(
                    "    Covid\n  Essential",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "WorkSans4",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.w, top: 1.h),
                  child: Text(
                    "    Skin\n Desieses",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans4"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.5.w, top: 1.h, bottom: 1.h),
                  child: Text(
                    "   Sexual",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans4"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: InkWell(
                    onTap: () {
                      {
                        currentIndex = 4;
                        setState(() {});
                      }
                    },
                    child: Container(
                      height: 12.5.h,
                      width: 26.w,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 3.5.h, bottom: 5.w, right: 2.w, left: 2.w),
                        child: Container(
                            padding: EdgeInsets.only(left: 3.5.w),
                            child: Image.asset("assest/medicine.png",
                                color: currentIndex == 4
                                    ? Colors.white
                                    : Color.fromARGB(255, 13, 28, 118))),
                      ),
                      decoration: BoxDecoration(
                          color: currentIndex == 4
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color(0xFFf2f4f7),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 5;
                      });
                    },
                    child: Container(
                      height: 12.5.h,
                      width: 26.w,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 30, right: 30, left: 25),
                        child: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset(
                              "assest/medical-equipment.png",
                              color: currentIndex == 5
                                  ? Colors.white
                                  : Color.fromARGB(255, 13, 28, 118),
                            )),
                      ),
                      decoration: BoxDecoration(
                          color: currentIndex == 5
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color.fromARGB(255, 249, 241, 245),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 6;
                      });
                    },
                    child: Container(
                      height: 12.5.h,
                      width: 26.w,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 30, right: 30, left: 25),
                        child: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset(
                              "assest/pillss.png",
                              color: currentIndex == 6
                                  ? Colors.white
                                  : Color.fromARGB(255, 13, 28, 118),
                            )),
                      ),
                      decoration: BoxDecoration(
                          color: currentIndex == 6
                              ? Color.fromARGB(255, 13, 28, 118)
                              : Color.fromARGB(255, 249, 241, 245),
                          borderRadius: BorderRadius.all(Radius.circular(2.h))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 1.h),
                  child: Text(
                    "  General",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans4"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.w, top: 1.h),
                  child: Text(
                    " Vitamin",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans4"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.w, top: 1.h),
                  child: Text(
                    "Essential",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "WorkSans4"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 13, 28, 118),
                    borderRadius: BorderRadius.all(Radius.circular(2.h))),
                alignment: Alignment.bottomLeft,
                height: 20.h,
                width: 85.5.w,
                child: Stack(children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 4.h, left: 5.w),
                        child: Text(
                          "Get the Best\nMedical Service",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: "WorkSans1"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 28.w, top: 1.5.h),
                        child: Text(
                          "Lorem ipsum is simply dummy\ntext of the printing",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: "WorkSans2"),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 3.h,
                    right: 4.w,
                    width: 27.5.w,
                    height: 13.h,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/doctor2.jpg"),
                        ),
                      ),
                    ),
                  )
                ])),
          ]),
        ),
      ),
    ));
  }
}
