import 'package:flutter/material.dart';
import 'package:getmecar/screens/authenticate/authenticate.dart';
import 'package:getmecar/screens/choose.dart';
import 'package:getmecar/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:getmecar/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //return either home or authenticate widget

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
