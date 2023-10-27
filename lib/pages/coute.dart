import 'package:flutter/material.dart';
import 'package:pope01/pages/HomePage.dart';

class cotizar extends StatefulWidget {
  @override
  _cotizarState createState() => _cotizarState();
}

class _cotizarState extends State<cotizar> {
  Color onceButtonColor = Colors.white;
  Color weeklyButtonColor = Colors.white;
  Color forthightButtonColor = Colors.white;
  Color monthlyButtonColor = Colors.white;

  Color cotizarButtonColor = Color.fromARGB(255, 0, 62, 113);
  Color agendarButtonColor = Color.fromARGB(255, 0, 62, 113);
  Color cancelarButtonColor = Colors.red;

  Color onceButtonTextColor = Colors.black;
  Color weeklyButtonTextColor = Colors.black;
  Color forthightButtonTextColor = Colors.black;
  Color monthlyButtonTextColor = Colors.black;

  Color cotizarButtonTextColor = Colors.black;
  Color agendarButtonTextColor = Colors.black;
  Color cancelarButtonTextColor = Colors.black;

  void resetButtonColors() {
    setState(() {
      onceButtonColor = Colors.white;
      weeklyButtonColor = Colors.white;
      forthightButtonColor = Colors.white;
      monthlyButtonColor = Colors.white;

      Color cotizarButtonColor = Color.fromARGB(255, 0, 62, 113);
      Color agendarButtonColor = Color.fromARGB(255, 0, 62, 113);
      Color cancelarButtonColor = Colors.red;

      onceButtonTextColor = Colors.black;
      weeklyButtonTextColor = Colors.black;
      forthightButtonTextColor = Colors.black;
      monthlyButtonTextColor = Colors.black;

      cotizarButtonTextColor = Colors.black;
      agendarButtonTextColor = Colors.black;
      cancelarButtonTextColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 110, 173, 255),
        title: Center(
          child: Text('Pope Cleaning'),
        ),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      resetButtonColors();
                      setState(() {
                        onceButtonColor = Color.fromARGB(255, 0, 62, 113);
                        onceButtonTextColor = Colors.white;
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: onceButtonColor),
                    child: Text(
                      'Once',
                      style: TextStyle(color: onceButtonTextColor),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      resetButtonColors();
                      setState(() {
                        weeklyButtonColor = Color.fromARGB(255, 0, 62, 113);
                        weeklyButtonTextColor = Colors.white;
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: weeklyButtonColor),
                    child: Text(
                      'Weekly',
                      style: TextStyle(color: weeklyButtonTextColor),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      resetButtonColors();
                      setState(() {
                        forthightButtonColor = Color.fromARGB(255, 0, 62, 113);
                        forthightButtonTextColor = Colors.white;
                      });
                    },
                    style:
                        ElevatedButton.styleFrom(primary: forthightButtonColor),
                    child: Text(
                      'Forthight',
                      style: TextStyle(color: forthightButtonTextColor),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      resetButtonColors();
                      setState(() {
                        monthlyButtonColor = Color.fromARGB(255, 0, 62, 113);
                        monthlyButtonTextColor = Colors.white;
                      });
                    },
                    style:
                        ElevatedButton.styleFrom(primary: monthlyButtonColor),
                    child: Text(
                      'Monthly',
                      style: TextStyle(color: monthlyButtonTextColor),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('How many rooms?'),
                ),
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                items: [
                  for (int i = 1; i <= 6; i++)
                    DropdownMenuItem<int>(value: i, child: Text(i.toString())),
                ],
                onChanged: (value) {
                  // Hacer algo con el valor seleccionado
                },
              ),
//numero de cocinas
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('How many kitchen?'),
                ),
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        16), // Ajusta el valor según tus necesidades
                  ),
                ),
                items: [
                  for (int i = 1; i <= 3; i++)
                    DropdownMenuItem<int>(value: i, child: Text(i.toString())),
                ],
                onChanged: (value) {
                  // Hacer algo con el valor seleccionado
                },
              ),
//numero de salas de estar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('How many living room?'),
                ),
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        16), // Ajusta el valor según tus necesidades
                  ),
                ),
                items: [
                  for (int i = 1; i <= 4; i++)
                    DropdownMenuItem<int>(value: i, child: Text(i.toString())),
                ],
                onChanged: (value) {
                  // Hacer algo con el valor seleccionado
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Extras'),
                ),
              ),
              //TextField
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 80, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ), // Alinea el texto en la parte superior
                maxLines: null, // Permite múltiples líneas
                keyboardType: TextInputType
                    .multiline, // Configura el tipo de entrada como texto multilinea
                textInputAction:
                    TextInputAction.newline, // Muestra una tecla de retorno
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        resetButtonColors();
                        setState(() {
                          cotizarButtonColor = Colors.white;
                          cotizarButtonTextColor = Colors.black;
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(primary: cotizarButtonColor),
                      child: Text(
                        'Cotizar',
                        style: TextStyle(color: cotizarButtonTextColor),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        resetButtonColors();
                        setState(() {
                          agendarButtonColor = Colors.white;
                          agendarButtonTextColor = Colors.black;
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(primary: agendarButtonColor),
                      child: Text(
                        'Agendar',
                        style: TextStyle(color: agendarButtonTextColor),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        resetButtonColors();
                        setState(() {
                          cancelarButtonColor = Colors.red;
                          cancelarButtonTextColor = Colors.white;
                        });
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: cancelarButtonColor),
                      child: Text(
                        'Cancelar',
                        style: TextStyle(color: cancelarButtonTextColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
