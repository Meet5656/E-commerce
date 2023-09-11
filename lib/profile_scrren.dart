import 'dart:io';
import 'package:first_screen/home_screen.dart';
import 'package:first_screen/medicine_screen.dart';
import 'package:first_screen/otp_screen.dart';
import 'package:first_screen/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({super.key});

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  File? _image;
  Future getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imagetempoarary = File(image.path);
    setState(() {
      this._image = imagetempoarary;
      // setImageValue(image.path);
    });
  }

  // void setImageValue(String img) async{
  //  var pref = await SharedPreferences.getInstance();
  //   pref.setString("image",img);
  // }
  //loader mate
  bool isloading = false;
  final _form = GlobalKey<FormState>();
  bool _isValid = false;
  void submit() {
    final isvalid = _form.currentState!.validate();
    if (!isvalid) {
      return;
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => doctor_screen(),
          ));
    }
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 30, 48, 148),
    ));
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 30, 48, 148),
    ));
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Form(
            key: _form,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      color: Color.fromARGB(255, 30, 48, 148),
                    ),
                    SafeArea(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            medicine_screen());
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                top: 10,
                                left: 290,
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 30,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -60,
                      child: Center(
                        child: InkWell(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Expanded(
                                child: AlertDialog(
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Please select one optison from these two',
                                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  // content: Text('GeeksforGeeks'),
                                  actions: [
                                    Container(
                                      height: 40,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.grey),
                                        onPressed: () =>
                                            getimage(ImageSource.gallery),
                                        child: Text(
                                          'Galary',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 175,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black),
                                        onPressed: () =>
                                            getimage(ImageSource.camera),
                                        child: Text(
                                          'Camara',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 75,
                              // backgroundColor: Colors.white,
                              // radius: 75,
                              child: ClipOval(
                                // radius: 50,
                                
                                child: _image != null
                                    ? Image.file(
                                        _image!,
                                        height: 140,
                                        width: 140,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        "assest/manicon.png",
                                        height: 140,
                                        width: 140,                                  
                                      ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 70),
                        child: Text(
                          "Change Photo",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6365b2)),
                        )),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(right: 35, left: 35),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFd0d5dd),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFd0d5dd)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field  is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(right: 35, left: 35),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFd0d5dd),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFd0d5dd)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field  is required';
                          }
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(right: 35, left: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFd0d5dd),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFd0d5dd)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          hintText: "Mobile",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter a Phone Number";
                          } else if (!RegExp(
                                  r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                              .hasMatch(value)) {
                            return "Please Enter a Valid Phone Number";
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.only(right: 35, left: 35),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFd0d5dd),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFd0d5dd)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                          hintText: "Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field  is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 350,
                          child: ElevatedButton(
                            child: isloading
                                ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text("Log Out"),
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              backgroundColor: Color.fromARGB(255, 16, 25, 78),
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              setState(() {
                                if (_isValid = _form.currentState!.validate()) {
                                  //  setState(() => isloading = true);

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => otp_screen(),
                                      ));
                                }
                              });
                              if (isloading) return;
                              // setState(() => isloading = true);
                              // await Future.delayed(Duration(seconds: 4));
                              setState(() => isloading = false);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
