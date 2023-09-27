import 'package:flutter/material.dart';

class GetTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintName;
  IconData? icon; // Make the icon property optional
  bool isObscureText;
  TextInputType inputType;

  GetTextFormField({
    required this.controller,
    required this.hintName,
    this.icon,
    this.isObscureText = false,
    this.inputType = TextInputType.text  ,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: inputType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(color: Colors.black),
          ),
          prefixIcon: icon != null
              ? Icon(icon)
              : null, // Check if the icon property is not null before using it
          hintText: hintName,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
