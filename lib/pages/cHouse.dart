import 'package:flutter/material.dart';
import 'package:pope01/pages/coute.dart';

class MyHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 173, 255),
        title: Center(
          child: Text('Pope Cleaning'),
        ),
      ),

//contenedor 1
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              // Contenedor 1
              Container(
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 660),
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
                        'Normal Clean',
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
                            '40',
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
                          'rooms – 2 Bathrooms – Kitchen – Living – Laundry:',
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
                                '✓ Floors – Thorough vacuum and mopping',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -2.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ DKitchen – Microwave, stovetop cleaned. Bins emptied and surfaces sanitised',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Bathrooms – Cleaning of the vanity, bath, tiles, mirrors, and showers',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Laundry – Cleaned sinks and surfaces',
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
                                '✓ Dusting – Throughout the home including windowsills, skirting, tables, and electronics',
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
              Container(
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 900),
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
                        'Vacate cleaning',
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
                            '60',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(width: 5), // Espacio entre los textos
                          Text(
                            '/per Hour – 8 to 10 Hours',
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
                          '3 rooms – 2 Bathrooms – Kitchen – Living – Laundry',
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
                                '✓ Floors – Thorough vacuum and mopping',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -2.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Kitchen – Microwave and ovens cleaned, bins emptied, and surfaces sanitised. We also clean the appliance and inside and outside of all cupboards',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ athrooms – Cleaning of the vanity, bath, tiles, mirrors, and showers, as well as the inside and outside of cupboards',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ aundry – Cleaned sinks and surfaces',
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
                                '✓ Dusting – Throughout the home including windowsills, skirting, tables, furniture, ledges, shelves, and electronics',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Detailed clean – Of all light fittings, switches, power points and ceiling fans',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Walls and doors – Spot cleaning to remove marks and cobwebs',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Bedrooms – Wardrobe and drawers cleaned',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing:
                                      -1.0, // <-- Disminuye el valor de la propiedad 'letterSpacing'
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '✓ Balconies – Swept and mopped',
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
            ],
          ),
        ),
      ),
    );
  }
}
