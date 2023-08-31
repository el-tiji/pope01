import 'package:flutter/material.dart';
import 'package:pope01/pages/1User.dart';
import 'package:pope01/pages/2Settings.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 173, 255),
        title: Center(
          child: Text('Pope Cleaning'),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 110, 173, 255),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  ' L O G O ',
                  style: TextStyle(fontSize: 30),
                ),
              )),
              ListTile(
                  title: Text(
                    'User',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(224, 228, 228, 228)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => User1()));
                  }),
                  ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(224, 228, 228, 228)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => settings1()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
