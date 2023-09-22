import 'package:flutter/material.dart';
import 'package:pope01/comm/genLoginSingupHeader.dart';
import 'package:pope01/comm/gentexFormFiled.dart';
import 'package:pope01/pages/login.dart';

class SingUp extends StatelessWidget {
  final _conUserId = TextEditingController();
  final _conEmail = TextEditingController();
  final _conTelefono = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

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
//metodo texto 
                genLoginSingupHeader('Sing Up'),
//metodo usuario
                GetTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    inputType: TextInputType.name,
                    hintName: 'user name'),
                SizedBox(
                  height: 5.0,
                ),
//metodo email
                GetTextFormField(
                    controller: _conEmail,
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                    hintName: 'Email'),
                SizedBox(
                  height: 5.0,
                ),
//metodo telefono
                GetTextFormField(
                    controller: _conTelefono,
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
                  controller: _conCPassword,
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
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => loginPage()));
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
