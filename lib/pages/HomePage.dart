import 'package:flutter/material.dart';
import 'package:pope01/pages/1User.dart';
import 'package:pope01/pages/2Settings.dart';
import 'package:pope01/pages/cHouse.dart';
import 'package:pope01/pages/cOffice.dart';
import 'package:pope01/pages/cCarpet.dart';

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
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(224, 228, 228, 228),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => User1()));
                  }),
              ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(224, 228, 228, 228),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => settings1()));
                  }),
            ],
          ),
        ),
      ),
//contenedor casa
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHouse()));
                  },
                  child: Center(
                    child: Container(
                      width: 700,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 16,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.house,
                              size: 150,
                              color: Color.fromARGB(255, 110, 173, 255)),
                          SizedBox(
                              width:
                                  200), // Ajusta este valor para cambiar la separación entre el icono y el texto
                          Text(
                            'Clean My House',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
//contenedor oficinas
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Office()));
                  },
                  child: Container(
                    width: 700,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.apartment,
                            size: 150,
                            color: Color.fromARGB(255, 110, 173, 255)),
                        SizedBox(
                            width:
                                200), // Ajusta este valor para cambiar la separación entre el icono y el texto
                        Text(
                          'Clean My office',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
//contenedor oalfombra
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            carpet())); // Ajusta la navegación a la página correcta
                  },
                  child: Container(
                    width: 700,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.solar_power,
                            size: 150,
                            color: Color.fromARGB(255, 110, 173, 255)),
                        SizedBox(
                            width:
                                200), // Ajusta este valor para cambiar la separación entre el icono y el texto
                        Text(
                          'Clean My carpet',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
