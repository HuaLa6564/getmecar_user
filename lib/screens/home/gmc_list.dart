import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:getmecar/models/user.dart';
import 'package:getmecar/models/gmc.dart';
import 'package:provider/provider.dart';
import 'package:getmecar/screens/home/gmc_tile.dart';

class GMCList extends StatefulWidget {
  static const route = "/gmc_list";
  @override
  _GMCListState createState() => _GMCListState();
}

class _GMCListState extends State<GMCList> {
  @override
  Widget build(BuildContext context) {
    final gmc = Provider.of<List<GMC>>(context);
    // gmc.forEach((gmcs) {
    //   print(gmcs.name);
    //   print(gmcs.email);
    //   print(gmcs.phoneNum);
    // });
    // print(users.documents);
    // for (var doc in users.documents) {
    //   print(doc.data);
    // }

    // if (gmc) print();
    return ListView.builder(
      itemCount: gmc.length,
      itemBuilder: (context, index) {
        return GMCTile(gmc: gmc[index]);
      },
    );
  }
}
