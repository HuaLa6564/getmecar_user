import 'package:flutter/material.dart';
import 'package:getmecar/screens/authenticate/sign_in.dart';
import 'package:getmecar/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  //change from true to false REVERSE
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    //if true
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } //if false
    else {
      return Register(toggleView: toggleView);
    }
  }
}
