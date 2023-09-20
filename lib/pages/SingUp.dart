import 'package:flutter/material.dart';
import 'package:pope01/GentexFormFiled.dart';
import 'package:pope01/pages/login.dart';

class SingUp extends StatelessWidget {
    final _conUserId = TextEditingController();
    final _conPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 130.0),
                Text(
                  'Sing up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40.0),
                ),
//metodo usuario 
                GetTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    hintName: 'user name'),
                SizedBox(
                  height: 5.0,
                ),
//metodo email
                GetTextFormField(
                    controller: _conUserId,
                    icon: Icons.email,
                    hintName: 'Email'),
                SizedBox(
                  height: 5.0,
                ),
//metodo telefono
                GetTextFormField(
                    controller: _conUserId,
                    icon: Icons.phone_android,
                    hintName: 'telefono'),
                SizedBox(
                  height: 5.0,
                ),
//metodo contraseña
                GetTextFormField(
                  controller: _conPassword,
                  icon: Icons.lock,
                  hintName: 'Password ',
                  isObscureText: true,
                ),
                SizedBox(
                  height: 5.0,
                ),         
//confirm password----------------------------------------------
                GetTextFormField(
                  controller: _conPassword,
                  icon: Icons.lock,
                  hintName: 'confirm Password ',
                  isObscureText: true,
                ),
                SizedBox(
                  height: 5.0,
                ), 
//boton Sing In-------------------------------------------
                Container(
                  margin: EdgeInsets.all(40.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'crear cuenta',
                      style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  ),
//Sing up----------------------------------------------
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('no tengo cuenta'),
                        TextButton(                          
                          child: Text('sing In'),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> loginPage()));
                          },                        
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}