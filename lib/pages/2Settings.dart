import 'package:flutter/material.dart';

class settings1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 173, 255),
        title: Center(
          child: Text('Pope Cleaning'),
        ),
      ),
      body: Center(child: Text('contenido de las configuraciones'),)
    );
  }
}