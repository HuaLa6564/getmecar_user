import 'package:getmecar/models/gmc.dart';
import 'package:flutter/material.dart';

class GMCTile extends StatelessWidget {
  final GMC gmc;
  GMCTile({this.gmc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.blue,
          ),
          title: Text(gmc.name),
          subtitle: Text(gmc.email),
        ),
      ),
    );
  }
}
