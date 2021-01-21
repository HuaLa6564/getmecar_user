import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LatLong extends StatefulWidget {
  @override
  _LatLongState createState() => _LatLongState();
}

class _LatLongState extends State<LatLong> {
  final DatabaseReference = FirebaseDatabase.instance;
  String latitudeData = "";
  String longitudeData = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async {
    final geoposition = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    setState(() {
      latitudeData = '${geoposition.latitude}';
      longitudeData = '${geoposition.longitude}';
    });
  }

  //firebase
  final LL = FirebaseDatabase.instance;
  var retrievedLat = "";
  var retrievedLong = "";
  String Lat = "";
  String Long = "";

  @override
  Widget build(BuildContext context) {
    // final ref = LL.reference().child("LatLong");
    final ref = DatabaseReference.reference();
    return Scaffold(
        appBar: AppBar(
          title: Text("Reading Latitude and Longitude"),
        ),
        body: Column(
          children: [
            // Text("lat"),
            // TextField(
            //   onChanged: (val) {
            //     setState(
            //       () {
            //         Lat = latitudeData;
            //       },
            //     );
            //   },
            // ),
            // Text("long"),
            // TextField(onChanged: (val) {
            //   setState(() {
            //     Long = longitudeData;
            //   });
            // }),
            RaisedButton(
              onPressed: () {
                ref.child("LatLong").push().set(
                  {
                    "lat" : latitudeData,
                    "long" : longitudeData,
                  
              });},
              child: Text("Send LatLong"),
            ),
            Text(latitudeData),
            Text(longitudeData),
          ],
        ));
  }
}
