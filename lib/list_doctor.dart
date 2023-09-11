import 'package:first_screen/doctor_screen.dart';
import 'package:first_screen/homepage.dart';
import 'package:first_screen/homepage_1.dart';
import 'package:first_screen/list2_doctor.dart';
import 'package:first_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class list_doctor extends StatefulWidget {
  const list_doctor({super.key});

  @override
  State<list_doctor> createState() => _list_doctorState();
}

class _list_doctorState extends State<list_doctor> {
  bool pageIndex = true;
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
    return Container(
      child: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,

          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 310,
                width: 420,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade100,
                        blurRadius: 5,
                        // spreadRadius: 2,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 30,
                      child: Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assest/doctor2.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              "Dr Albert Flores",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "WorkSans1",
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40, top: 5),
                            child: Text(
                              "Cosmetologist",
                              style: TextStyle(
                                fontFamily: "WorkSans1",
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 130, top: 10),
                                child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Icon(
                                      Icons.star,
                                      size: 22,
                                      color: Colors.blue,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            color: Color(0xFFeaecf0),
                            endIndent: 30,
                            height: 10,
                            thickness: 1,
                            indent: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.date_range,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 5),
                                child: Text(
                                  "10 Dec 2022",
                                  style: TextStyle(
                                    color: Color(0xFF6d778b),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "10:30 AM",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0xFF12b76a),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "Confirmed",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 190,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Color(0xFF2b2f96))),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xFF2b2f96)),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      backgroundColor: Color(0xFF1c208f),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Reschedule",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // second

              Container(
                height: 310,
                width: 420,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade100,
                        blurRadius: 5,
                        // spreadRadius: 2,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 30,
                      child: Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assest/doctor1.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 25),
                            child: Text(
                              "Dr Gourav Solanaki",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "WorkSans1",
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50, top: 5),
                            child: Text(
                              "Endocrinology",
                              style: TextStyle(
                                fontFamily: "WorkSans1",
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 127, top: 10),
                                child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Icon(
                                      Icons.star,
                                      size: 22,
                                      color: Colors.blue,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            // color: Colors.pink.shade200,
                            color: Color(0xFFeaecf0),
                            endIndent: 30,
                            height: 10,
                            thickness: 1,
                            indent: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.date_range,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 5),
                                child: Text(
                                  "10 Dec 2022",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "10:30 AM",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0xFF12b76a),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "Confirmed",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 190,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Color(0xFF2b2f96))),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xFF2b2f96)),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      backgroundColor: Color(0xFF1c208f),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Reschedule",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 310,
                width: 420,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade100,
                        blurRadius: 5,
                        // spreadRadius: 2,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 30,
                      child: Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assest/doctor3.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 25),
                            child: Text(
                              "Dr Kathryn Murphy",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "WorkSans1",
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 45, top: 5),
                            child: Text(
                              "Cosmetologist",
                              style: TextStyle(
                                fontFamily: "WorkSans1",
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 127, top: 10),
                                child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Icon(
                                      Icons.star,
                                      size: 22,
                                      color: Colors.blue,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            color: Color(0xFFeaecf0),
                            endIndent: 30,
                            height: 10,
                            thickness: 1,
                            indent: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.date_range,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 5),
                                child: Text(
                                  "10 Dec 2022",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Color(0xFF6d778b),
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "10:30 AM",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0xFF12b76a),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 10),
                                child: Text(
                                  "Confirmed",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF6d778b),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 190,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Color(0xFF2b2f96))),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xFF2b2f96)),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      backgroundColor: Color(0xFF1c208f),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Reschedule",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
