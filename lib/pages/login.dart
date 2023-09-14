import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 173, 255),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),

            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),

            //texto de usuario
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.grey.shade200,
                ),
                
              ),
            ),
            //texto de contraseña
          ],
        ),
      ),
    );
  }
}
