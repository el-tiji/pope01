import 'package:flutter/material.dart';
import 'package:pope01/pages/coute.dart';

class Office extends StatelessWidget {
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
        child: Center(
          child: Column(
            children: <Widget>[
              // Contenedor 1
              Container(
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 700),
                padding: EdgeInsets.fromLTRB(8, 30, 8,
                    10), // 8 a la izquierda, 20 arriba, 8 a la derecha, 10 abajo
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Título y precio
                      Text(
                        'Office cleaning',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Australian Best Cleaning'),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Centrar los elementos
                        children: [
                          Text(
                            '70',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(width: 5), // Espacio entre los textos
                          Text(
                            '/per hour',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          'Inclusions',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: -1.0,
                          ),
                        ),
                        subtitle: Text(
                          'Our basic office cleaning package includes the following details:',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: -1.0,
                          ),
                        ),
                      ),
//que se incluye Lista de características
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                '✓ Cleaning and sanitising the kitchenette and bathrooms',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -2.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Dusting shelves, windowsills',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Vacuuming furniture',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Emptying and relining bins',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Toilets – Cleaned and sanitised',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Cleaning and sanitising desks and tables',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Sweeping, vacuuming and mopping floors',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => cotizar()));
                                },
                                child: Text('coute'), // Texto del botón
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//contenedor 2
            ],
          ),
        ),
      ),
    );
  }
}
