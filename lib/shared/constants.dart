import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ));

const regularHeading =
    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.green);

const boldHeading =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.green);

const regularDarkText = TextStyle(
    fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.greenAccent);
