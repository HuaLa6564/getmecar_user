import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getmecar/widgets/custom_input.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final FocusNode focusNode;
  CustomInput(
      {this.hintText, this.onChanged, this.onSubmitted, this.focusNode});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Email...",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 18.0,
            )),
        // style: Constants.regularDarkText,
      ),
    );
  }
}
