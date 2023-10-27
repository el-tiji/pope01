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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => cotizar()));
                },
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 300,
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
                    ],
                  ),
                  padding: EdgeInsets.all(20.0),
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
            ),

            SizedBox(
              height: 20.0,
            ),

//contenedor 2
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => cotizar()));
              },
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 300,
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
                  ],
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Container'),
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
            ),

            SizedBox(
              height: 20.0,
            ),
            
//contenedor 3
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => cotizar()));
              },
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 300,
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
                  ],
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Container'),
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
            ),
          ],
        ),
      ),
    );
  }
}
