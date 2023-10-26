import 'package:flutter/material.dart';

class carpet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 173, 255),
        title: Center(
          child: Text('Pope Cleaning'),
        ),
      ),
      body: SingleChildScrollView(
        // Envuelve tu Column en un SingleChildScrollView
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centrar verticalmente en la pantalla
          children: [
            Center(
              // Centrar el Container horizontalmente
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 400,
                  maxHeight: 500,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 16,
                      ),
                    ]),
                padding: EdgeInsets.all(
                    20.0), // Agregar margen interno de 16.0 en todas las direcciones
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Free'),
                    Text(
                      'Try one project for yourself or your team with no time-limits.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text('precio del producto'),
                    Text(
                      'No credit card required. One project, free forever.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0, // Agregar espacio entre los contenedores
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 400,
                maxHeight: 500,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, // Cambia el color si es necesario
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 16,
                    ),
                  ]),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'New Container'), // Cambia el contenido según tus necesidades
                  Text(
                    'This is a new container with some different content.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text('Another section'),
                  Text(
                    'You can customize the content as you like.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0, // Agregar espacio entre los contenedores
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 400,
                maxHeight: 500,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,// Cambia el color si es necesario
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 16,
                    ),
                  ]),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'New Container'), // Cambia el contenido según tus necesidades
                  Text(
                    'This is a new container with some different content.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text('Another section'),
                  Text(
                    'You can customize the content as you like.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
