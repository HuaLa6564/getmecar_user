import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:getmecar/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class addBooking extends StatefulWidget {
  // addBooking({this.app});
  // final FirebaseApp app;
  @override
  _addBookingState createState() => _addBookingState();
}

class _addBookingState extends State<addBooking> {
  final DatabaseReference = FirebaseDatabase.instance;
  //child name in firebase
  final name = 'name';
  final ic = "IC";
  final license = "license";
  final address = "address";
  final phoneNum = 'phoneNum';
  final rentDateStart = "rentDateIn";
  final rentDateEnd = "rentDateEnd";
  final carType = "carType";
  //controller for booking in firebase
  final nameController = TextEditingController();
  final icController = TextEditingController();
  final licenseController = TextEditingController();
  final addressController = TextEditingController();
  final phoneNumController = TextEditingController();
  final rentDateStartController = TextEditingController();
  final rentDateEndController = TextEditingController();
  final carTypeController = TextEditingController();
  @override
  void initState() {
    // final FirebaseDatabase database = FirebaseDatabase();
    // _addBooking = DatabaseReference.reference().child('Booking');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = DatabaseReference.reference();
    bool _secureText = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a Booking"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Center(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      cursorColor: Colors.blue,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text(
                      ic,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      cursorColor: Colors.blue,
                      controller: icController,
                      decoration: InputDecoration(
                        hintText: "IC Number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text(
                      license,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      cursorColor: Colors.blue,
                      controller: licenseController,
                      decoration: InputDecoration(
                        hintText: "License Number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text(
                      address,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    // TextField(
                    //   cursorColor: Colors.blue,
                    //   controller: addressController,
                    //   decoration: InputDecoration(
                    //     hintText: "Address",
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    // Text(
                    //   phoneNum,
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.openSans(
                    //       textStyle: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600)),
                    // ),
                    // TextField(
                    //   cursorColor: Colors.blue,
                    //   controller: phoneNumController,
                    //   decoration: InputDecoration(
                    //     hintText: "Phone Number",
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    // Text(
                    //   rentDateStart,
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.openSans(
                    //       textStyle: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600)),
                    // ),
                    // TextField(
                    //   cursorColor: Colors.blue,
                    //   controller: rentDateStartController,
                    //   decoration: InputDecoration(
                    //     hintText: "Rent Date Start",
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    // Text(
                    //   rentDateEnd,
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.openSans(
                    //       textStyle: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600)),
                    // ),
                    // TextField(
                    //   cursorColor: Colors.blue,
                    //   controller: rentDateEndController,
                    //   decoration: InputDecoration(
                    //     hintText: "Rent Date End",
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    // Text(
                    //   carType,
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.openSans(
                    //       textStyle: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600)),
                    // ),
                    TextField(
                      cursorColor: Colors.blue,
                      controller: carTypeController,
                      decoration: InputDecoration(
                        hintText: "Car Type",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        ref.child('Booking').push().set({
                          "name": nameController.text,
                          "ic": icController.text,
                          "license": licenseController.text,
                          // "address": addressController.text,
                          // "phoneNum": phoneNumController.text,
                          // "rentDateStart": rentDateStartController.text,
                          // "rentDateEnd": rentDateEndController.text,
                          "carType": carTypeController.text,
                        });
                        nameController.clear();
                        icController.clear();
                        licenseController.clear();
                        // addressController.clear();
                        // phoneNumController.clear();
                        // rentDateStartController.clear();
                        // rentDateEndController.clear();
                        carTypeController.clear();
                      },
                      child: Text('Book Now'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
