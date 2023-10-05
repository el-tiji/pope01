import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pope01/comm/comhelper.dart';
import 'package:pope01/comm/genLoginSingupHeader.dart';
import 'package:pope01/DatabaseHandler/DbHelper.dart';
import 'package:pope01/Models/UserModel.dart';
import 'package:pope01/comm/gentexFormFiled.dart';
import 'package:pope01/pages/SingUp.dart';

import 'homePages.dart';

class _login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class loginPage extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>(); 

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  var dbHelper ;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  login() async {
    String uid = _conUserId.text;
    String Password = _conPassword.text;    

    if (uid.isEmpty){
      alertDialog(context, "porfavor ingrese user ID");
    }
    else if (Password.isEmpty){
      alertDialog(context, "Please enter password");
    }
    else {
       await dbHelper.getLoginUser(uid, Password).then((userData) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => HomePage()),
                (Route<dynamic> route) => false);
          }.catchError((error) {
        print(error);
        alertDialog(context, "Error: Login fallido ");
      });
    }
  }

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
                genLoginSingupHeader('Sing In '),
//metodo usuario
                GetTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    hintName: 'user name', ),
                SizedBox(
                  height: 5.0,
                ),
//metodo contraseña
                GetTextFormField(
                  controller: _conPassword,
                  icon: Icons.lock,
                  hintName: 'Password ',
                ),

//boton Sing In-------------------------------------------
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Sing In',
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
                        child: Text('sing Up'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SingUp()));
                        },
                      )
                    ],
                  ),
                ),
//olvide mi contraseña----------------------------------
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text('ya tengo una cuenta'),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
