import 'package:first_screen/list2_doctor.dart';
import 'package:first_screen/list_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class list_full extends StatefulWidget {
  const list_full({super.key});

  @override
  State<list_full> createState() => _list_fullState();
}

class _list_fullState extends State<list_full> {


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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 25),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25),
                    child: Container(
                      child: Text(
                        "Appointments",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: "WorkSans1"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 247, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          pageIndex == true;
                          onCLick(true);
                          setState(() {});
                          // setState(() {
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => list_doctor(),));
                          // });
                        },
                        child: Container(
                          height: 58,
                          width: 200,
                          decoration: BoxDecoration(
                              // color: pageIndex == true
                              //     ? Colors.white
                              //     : Colors.transparent,
                                color: pageIndex == true
                                        ? Color(0xFFffffff)
                                        // 0XFFf7f7ff
                                        : Color(0XFFf7f7ff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "Upcoming",
                              style: TextStyle(
                                  fontSize: 25,
                                  // fontWeight: FontWeight.bold,
                                 fontWeight: FontWeight.w900, fontFamily: "WorkSans4", 
                                  color: pageIndex == true
                                              ? Color(0xFF1d218f)
                                              : Color(0xFFcbcbe5),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          pageIndex == false;
                          onCLick(false);
                          setState(() {});
                          // setState(() {
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => list2_doctor(),));
                          // });
                        },
                        child: Container(
                          height: 58,
                          width: 200,
                          decoration: BoxDecoration(
                               color: pageIndex == true
                                        ? Color(0XFFf7f7ff)
                                        : Color(0xFFffffff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "Previous",
                              style: TextStyle(
                                fontSize: 25,
                                // fontWeight: FontWeight.w500,
                                   fontWeight: FontWeight.w900, fontFamily: "WorkSans4", 
                                   color: pageIndex == true
                                              ? Color(0xFFcbcbe5)
                                              :  Color(0xFF1d218f),
                                // color: Color.fromARGB(255, 38, 47, 99)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              pageIndex == true ? list_doctor() : list2_doctor(),
            ],
          ),
        ),
      ),
    );
  }
}
