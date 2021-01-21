import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/facebook.png'),
                  width: 80,
                  height: 80,
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('Customer'),
            color: Colors.blue,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('Admin'),
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
