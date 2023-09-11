import 'package:first_screen/onboarding2.dart';
import 'package:first_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final controller = PageController();
  int currentindex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: PageView.builder(
          controller: _controller,
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentindex = index;
            });
          },
          itemBuilder: (_, i) {
            return Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding:  EdgeInsets.only(top:1.h),
                    child: Container(
                        height: 40.h,
                        width: 35.h,
                        child: Image.asset(contents[i].image)),
                  ),
                ),
                Text(
                  contents[i].title,
                  style: TextStyle(
                    fontSize: 3.5.h,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: "WorkSans",
                    color: Color(0xFF404256),
                  ),
                ),
                SizedBox(
                 height: 3.h,
                ),
                Text(
                  contents[i].discription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontFamily: "WorkSans1",
                    color: Color(0xFFbcbcbc),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              contents.length, (index) => builddot(index, context)),
        ),
      ),
      SizedBox(
        height: 8.h,
      ),
      Container(
        height: 6.5.h,
        width: 40.h,
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
          color: Color.fromARGB(255, 16, 25, 78),
        ),
        margin: EdgeInsets.only(bottom: 4.h),
        child: ElevatedButton(
          child:
              Text(currentindex == contents.length - 1 ? 'Continue' : 'Next'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: Color.fromARGB(255, 16, 25, 78),
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            if (currentindex == contents.length - 1) {}
            _controller.nextPage(
                duration: Duration(milliseconds: 700),
                curve: Curves.decelerate);
            if (currentindex == contents.length - 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => signup_screen(),
                ),
              );
            }
          },
        ),
      ),
      // SizedBox(
      //   height: 2.h,
      // ),
      Container(
        margin: EdgeInsets.only(bottom: 5.h),
        child: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => signup_screen(),));
            _controller.jumpToPage(3);
          },
          child: Text(
            "Skip",
            style: TextStyle(
                fontSize: 2.5.h,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 16, 25, 78)),
          ),
        ),
      ),
    ]));
  }

  Container builddot(int index, BuildContext context) {
    return Container(
      height: 1.5.h,
      width: currentindex == index ? 1.5.h :1.5.h,
      margin: EdgeInsets.only(right: 1.1.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(width: 1),
          border: Border.all(
              color:
                  controller.initialPage > 5 ? Colors.red : Colors.blueAccent),
          color: currentindex == index
              ? Color.fromARGB(255, 16, 25, 78)
              : Colors.white),
    );
  }
}
