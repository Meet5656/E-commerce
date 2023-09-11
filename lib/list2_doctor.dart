import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'list/listdr2.dart';

class list2_doctor extends StatefulWidget {
  const list2_doctor({super.key});

  @override
  State<list2_doctor> createState() => _list2_doctorState();
}

class _list2_doctorState extends State<list2_doctor> {
  List<list2doctor> doctor2 = [
    list2doctor(
      "assest/doctor4.jpg",
      "Dr Taina Alam",
      "Cosmetologist",
      "4.8",
      "10 Dec 2022",
      "10:30",
      "Confirmed",
    ),
    list2doctor(
      "assest/doctor1.jpg",
      "Dr Gourav solanaki",
      "Cosmetologist",
      "5.0",
      "12 Dec 2022",
      "10:00",
      "Confirmed",
    ),
    list2doctor(
      "assest/doctor6.jpg",
      "Dr Taina Alam",
      "Cosmetologist",
      "5.9",
      "14 Dec 2022",
      "10:22",
      "Confirmed",
    ),
    list2doctor(
      "assest/doctor1.jpg",
      "Dr Gourav solanaki",
      "Cosmetologist",
      "5.0",
      "12 Dec 2022",
      "10:00",
      "Confirmed",
    ),
    list2doctor(
      "assest/doctor6.jpg",
      "Dr Taina Alam",
      "Cosmetologist",
      "5.9",
      "14 Dec 2022",
      "10:22",
      "Confirmed",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizerUtil.height,
      width: SizerUtil.width,
      child: ListView.builder(
          itemCount: doctor2.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                top: 2.h,
                left: 3.h,
                right: 3.h,
                // bottom: 2.h
              ),
              child: Container(
                // width: 60.w,
                color: Colors.amber,
                padding: EdgeInsets.only(
                    top: 30.h, left: 3.h, right: 3.h, bottom: 2.h),
                child: Row(
                  children: [Text("Hello")],
                ),
              ),
            );
            
            // return Row(
            //   children: [
            //     SizedBox(
            //       height: 3.h,
            //     ), 
            //     Padding(
            //       padding: EdgeInsets.only(
            //         top: 2.h,
            //         left: 3.h,
            //         right: 3.h,
            //   bottom: 2.h
            //       ),
            //       child: Container(
            //         width: 85.w,
            //         padding: EdgeInsets.only(
            //           top: 30.h,
            //           bottom: 1.h,
            //           left: 39.h,
            //         ),
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.pink.shade100,
            //                 blurRadius: 5,
            //                 // spreadRadius: 2,
            //               ), //BoxShadow
            //               BoxShadow(
            //                 color: Colors.white,
            //                 offset: const Offset(0.0, 0.0),
            //                 blurRadius: 0.0,
            //                 spreadRadius: 0.0,
            //               ), //BoxShadow
            //             ],
            //             borderRadius: BorderRadius.all(Radius.circular(2.5.h))),
            //        child: Column(
            //         children: [
            //           Text("hello")
            //         ],
            //        ),
            //       ),
            //     ),
            //   ],
            // );
          }),

      // child: SafeArea(
      //   child: SingleChildScrollView(

      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 30,
      //         ),
      //         Padding(
      //        padding: EdgeInsets.only(left: 3.h,right:3.h ),
      //           child: Container(
      //             // height: 310,
      //             // width: 420,
      //             decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.pink.shade100,
      //                     blurRadius: 5,
      //                     // spreadRadius: 2,
      //                   ), //BoxShadow
      //                   BoxShadow(
      //                     color: Colors.white,
      //                     offset: const Offset(0.0, 0.0),
      //                     blurRadius: 0.0,
      //                     spreadRadius: 0.0,
      //                   ), //BoxShadow
      //                 ],
      //                 borderRadius: BorderRadius.all(Radius.circular(2.5.h))),
      //             child: Stack(
      //               children: [
      //                 Positioned(
      //                   top: 35,
      //                   left: 30,
      //                   child: Container(
      //                     height: 80,
      //                     width: 80,
      //                     child: CircleAvatar(
      //                       radius: 30,
      //                       backgroundImage: AssetImage("assest/doctor2.jpg"),
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                   alignment: Alignment.topCenter,
      //                   child: Column(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(top: 35),
      //                         child: Text(
      //                           "Dr Albert Flores",
      //                           style: TextStyle(
      //                               fontSize: 25,
      //                               fontWeight: FontWeight.w800,
      //                               fontFamily: "WorkSans1"),
      //                         ),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(right: 40, top: 5),
      //                         child: Text(
      //                           "Cosmetologist",
      //                           style: TextStyle(
      //                               fontSize: 20,
      //                               fontWeight: FontWeight.w300,
      //                               fontFamily: "WorkSans1"),
      //                         ),
      //                       ),
      //                       Row(
      //                         children: [
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(left: 132, top: 10),
      //                             child: Container(
      //                                 alignment: Alignment.topLeft,
      //                                 child: Icon(
      //                                   Icons.star,
      //                                   size: 22,
      //                                   color: Colors.blue,
      //                                 )),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(top: 10, left: 5),
      //                             child: Text(
      //                               "4.8",
      //                               style: TextStyle(
      //                                 fontSize: 22,
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 30,
      //                       ),
      //                       Divider(
      //                         color: Color(0xFFeaecf0),
      //                         endIndent: 30,
      //                         height: 10,
      //                         thickness: 0,
      //                         indent: 30,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(left: 20, top: 30),
      //                             child: Icon(
      //                               Icons.date_range,
      //                               color: Color(0xFF6d778b),
      //                               size: 25,
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(top: 30, left: 5),
      //                             child: Text(
      //                               "10 Dec 2022",
      //                               style: TextStyle(
      //                                 fontSize: 20,
      //                                 color: Color(0xFF6d778b),
      //                               ),
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(left: 20, top: 30),
      //                             child: Icon(
      //                               Icons.watch_later_outlined,
      //                               color: Color(0xFF6d778b),
      //                               size: 25,
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(top: 30, left: 10),
      //                             child: Text(
      //                               "10:30 AM",
      //                               style: TextStyle(
      //                                 fontSize: 20,
      //                                 color: Color(0xFF6d778b),
      //                               ),
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(top: 30, left: 20),
      //                             child: Container(
      //                               height: 13,
      //                               width: 13,
      //                               decoration: BoxDecoration(
      //                                 borderRadius:
      //                                     BorderRadius.all(Radius.circular(20)),
      //                                 color: Color(0xFF12b76a),
      //                               ),
      //                             ),
      //                           ),
      //                           Padding(
      //                             padding:
      //                                 const EdgeInsets.only(top: 30, left: 10),
      //                             child: Text(
      //                               "Confirmed",
      //                               style: TextStyle(
      //                                 fontSize: 20,
      //                                 color: Color(0xFF6d778b),
      //                               ),
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 25,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Container(
      //                             height: 50,
      //                             width: 200,
      //                             child: ElevatedButton(
      //                                 onPressed: () {},
      //                                 style: ElevatedButton.styleFrom(
      //                                   shape: RoundedRectangleBorder(
      //                                       borderRadius: BorderRadius.all(
      //                                           Radius.circular(15))),
      //                                   backgroundColor: Color(0xFF1c208f),
      //                                 ),
      //                                 child: Padding(
      //                                   padding: const EdgeInsets.only(left: 5),
      //                                   child: Text(
      //                                     "Conform",
      //                                     style: TextStyle(
      //                                         fontSize: 22, color: Colors.white),
      //                                   ),
      //                                 )),
      //                           ),
      //                         ],
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         // second

      //         Container(
      //           height: 310,
      //           width: 420,
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.pink.shade100,
      //                   blurRadius: 5,
      //                   // spreadRadius: 2,
      //                 ), //BoxShadow
      //                 BoxShadow(
      //                   color: Colors.white,
      //                   offset: const Offset(0.0, 0.0),
      //                   blurRadius: 0.0,
      //                   spreadRadius: 0.0,
      //                 ), //BoxShadow
      //               ],
      //               borderRadius: BorderRadius.all(Radius.circular(25))),
      //           child: Stack(
      //             children: [
      //               Positioned(
      //                 top: 35,
      //                 left: 30,
      //                 child: Container(
      //                   height: 80,
      //                   width: 80,
      //                   child: CircleAvatar(
      //                     radius: 30,
      //                     backgroundImage: AssetImage("assest/doctor1.jpg"),
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 alignment: Alignment.topCenter,
      //                 child: Column(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(top: 35, left: 25),
      //                       child: Text(
      //                         "Dr Gourav Solanaki",
      //                         style: TextStyle(
      //                             fontSize: 25,
      //                             fontWeight: FontWeight.w800,
      //                             fontFamily: "WorkSans1"),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(right: 47, top: 5),
      //                       child: Text(
      //                         "Endocrinology",
      //                         style: TextStyle(
      //                             fontSize: 20,
      //                             fontWeight: FontWeight.w300,
      //                             fontFamily: "WorkSans1"),
      //                       ),
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 128, top: 10),
      //                           child: Container(
      //                               alignment: Alignment.topLeft,
      //                               child: Icon(
      //                                 Icons.star,
      //                                 size: 22,
      //                                 color: Colors.blue,
      //                               )),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 10, left: 5),
      //                           child: Text(
      //                             "4.8",
      //                             style: TextStyle(
      //                               fontSize: 22,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       height: 30,
      //                     ),
      //                     Divider(
      //                       color: Color(0xFFeaecf0),
      //                       endIndent: 30,
      //                       height: 10,
      //                       thickness: 0,
      //                       indent: 30,
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 20, top: 30),
      //                           child: Icon(
      //                             Icons.date_range,
      //                             color: Color(0xFF6d778b),
      //                             size: 25,
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 5),
      //                           child: Text(
      //                             "10 Dec 2022",
      //                             style: TextStyle(
      //                               fontSize: 20,
      //                               color: Color(0xFF6d778b),
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 20, top: 30),
      //                           child: Icon(
      //                             Icons.watch_later_outlined,
      //                             color: Color(0xFF6d778b),
      //                             size: 25,
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 10),
      //                           child: Text(
      //                             "10:30 AM",
      //                             style: TextStyle(
      //                               fontSize: 20,
      //                               color: Color(0xFF6d778b),
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 20),
      //                           child: Container(
      //                             height: 13,
      //                             width: 13,
      //                             decoration: BoxDecoration(
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(20)),
      //                               color: Color(0xFF12b76a),
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 10),
      //                           child: Text(
      //                             "Confirmed",
      //                             style: TextStyle(
      //                               fontSize: 20,
      //                               color: Color(0xFF6d778b),
      //                             ),
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       height: 25,
      //                     ),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Container(
      //                           height: 50,
      //                           width: 200,
      //                           child: ElevatedButton(
      //                               onPressed: () {},
      //                               style: ElevatedButton.styleFrom(
      //                                 shape: RoundedRectangleBorder(
      //                                     borderRadius: BorderRadius.all(
      //                                         Radius.circular(15))),
      //                                 backgroundColor: Color(0xFF1c208f),
      //                               ),
      //                               child: Padding(
      //                                 padding: const EdgeInsets.only(left: 5),
      //                                 child: Text(
      //                                   "Conform",
      //                                   style: TextStyle(
      //                                       fontSize: 22, color: Colors.white),
      //                                 ),
      //                               )),
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         Container(
      //           height: 310,
      //           width: 420,
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.pink.shade100,
      //                   blurRadius: 5,
      //                   // spreadRadius: 2,
      //                 ), //BoxShadow
      //                 BoxShadow(
      //                   color: Colors.white,
      //                   offset: const Offset(0.0, 0.0),
      //                   blurRadius: 0.0,
      //                   spreadRadius: 0.0,
      //                 ), //BoxShadow
      //               ],
      //               borderRadius: BorderRadius.all(Radius.circular(25))),
      //           child: Stack(
      //             children: [
      //               Positioned(
      //                 top: 35,
      //                 left: 30,
      //                 child: Container(
      //                   height: 80,
      //                   width: 80,
      //                   child: CircleAvatar(
      //                     radius: 30,
      //                     backgroundImage: AssetImage("assest/doctor3.jpg"),
      //                   ),
      //                 ),
      //               ),
      //               Container(
      //                 alignment: Alignment.topCenter,
      //                 child: Column(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(top: 35, left: 25),
      //                       child: Text(
      //                         "Dr Kathryn Murphy",
      //                         style: TextStyle(
      //                             fontSize: 25,
      //                             fontWeight: FontWeight.w800,
      //                             fontFamily: "WorkSans1"),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(right: 45, top: 5),
      //                       child: Text(
      //                         "Cosmetologist",
      //                         style: TextStyle(
      //                             fontSize: 20,
      //                             fontWeight: FontWeight.w300,
      //                             fontFamily: "WorkSans1"),
      //                       ),
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 128, top: 10),
      //                           child: Container(
      //                               alignment: Alignment.topLeft,
      //                               child: Icon(
      //                                 Icons.star,
      //                                 size: 22,
      //                                 color: Colors.blue,
      //                               )),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 10, left: 5),
      //                           child: Text(
      //                             "4.8",
      //                             style: TextStyle(
      //                               fontSize: 22,
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       height: 30,
      //                     ),
      //                     Divider(
      //                       color: Color(0xFFeaecf0),
      //                       endIndent: 30,
      //                       height: 10,
      //                       thickness: 0,
      //                       indent: 30,
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 20, top: 30),
      //                           child: Icon(
      //                             Icons.date_range,
      //                             color: Color(0xFF6d778b),
      //                             size: 25,
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 5),
      //                           child: Text(
      //                             "10 Dec 2022",
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Color(0xFF6d778b)),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 20, top: 30),
      //                           child: Icon(
      //                             Icons.watch_later_outlined,
      //                             color: Color(0xFF6d778b),
      //                             size: 25,
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 10),
      //                           child: Text(
      //                             "10:30 AM",
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Color(0xFF6d778b)),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 20),
      //                           child: Container(
      //                             height: 13,
      //                             width: 13,
      //                             decoration: BoxDecoration(
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(20)),
      //                               color: Color(0xFF12b76a),
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.only(top: 30, left: 10),
      //                           child: Text(
      //                             "Confirmed",
      //                             style: TextStyle(fontSize: 20),
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       height: 25,
      //                     ),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Container(
      //                           height: 50,
      //                           width: 200,
      //                           child: ElevatedButton(
      //                               onPressed: () {},
      //                               style: ElevatedButton.styleFrom(
      //                                 shape: RoundedRectangleBorder(
      //                                     borderRadius: BorderRadius.all(
      //                                         Radius.circular(15))),
      //                                 backgroundColor: Color(0xFF1c208f),
      //                               ),
      //                               child: Padding(
      //                                 padding: const EdgeInsets.only(left: 5),
      //                                 child: Text(
      //                                   "Conform",
      //                                   style: TextStyle(
      //                                       fontSize: 22, color: Colors.white),
      //                                 ),
      //                               )),
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
