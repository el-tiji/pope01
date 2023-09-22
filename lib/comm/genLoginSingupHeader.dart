import 'package:flutter/material.dart';

class genLoginSingupHeader extends StatelessWidget {
  String hederName;
  genLoginSingupHeader(this.hederName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       children: [
        SizedBox(height: 130.0),
                Text(
                  hederName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'codigo ejemplo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25.0),
                ),
                SizedBox(height: 10.0),], 
      ),
    );
  }
}