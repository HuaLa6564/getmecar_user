import 'package:flutter/material.dart';
import 'package:getmecar/screens/home/gmc_list.dart';
import 'package:getmecar/screens/services/auth.dart';
import 'package:getmecar/screens/services/database.dart';
import 'package:getmecar/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:getmecar/models/user.dart';

import 'models/gmc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        // routes: {
        //   GMCList.route: (context) => StreamProvider<List<GMC>>.value(
        //to get DatabaseService from database.da
        // value: DatabaseService().users,
        // child: Scaffold(body: GMCList()))
        // },
      ),
    );
  }
}
