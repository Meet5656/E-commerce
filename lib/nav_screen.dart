import 'package:first_screen/doctor_screen.dart';
import 'package:first_screen/home_screen.dart';
import 'package:first_screen/list2_doctor.dart';
import 'package:first_screen/list_doctor.dart';
import 'package:first_screen/list_full.dart';
import 'package:first_screen/medicine_screen.dart';
import 'package:first_screen/profile_scrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class nav_screen extends StatefulWidget {
  const nav_screen({super.key});

  @override
  State<nav_screen> createState() => _nav_screenState();
}

class _nav_screenState extends State<nav_screen> {
  int _currentIndex = 0;
  final screen = [
    home_screen(),
    doctor_screen(),
    medicine_screen(),
    list_full(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          // padding: EdgeInsets.all(25),
          // margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(bottom: 3.h,right: 2.h,left: 2.3.w),
           margin: EdgeInsets.symmetric(horizontal: 2.w,vertical:1.h),

          child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(3.h)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[500],
              selectedFontSize: 11.sp,
              unselectedFontSize: 11.sp,
              backgroundColor: Color.fromARGB(255, 39, 51, 121),
              iconSize: 2.5.h,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      // color: Colors.grey,
                    ),
                    label: "Home",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: "Doctors",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: "Medicine",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz),
                    label: "Dr.List",
                    backgroundColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
