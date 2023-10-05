import 'package:flutter/material.dart';
import 'package:pope01/DatabaseHandler/DbHelper.dart';
import 'package:pope01/Models/UserModel.dart';
import 'package:pope01/comm/comhelper.dart';
import 'package:pope01/comm/genLoginSingupHeader.dart';
import 'package:pope01/comm/gentexFormFiled.dart';
import 'package:pope01/pages/login.dart';
import 'package:toast/toast.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUp createState() => _SingUp();
}

class _SingUp extends State<SingUp> {
  final _formKey = new GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conTelefono = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  var dbHelper ;

  @override
  void initState(){
    super.initState();
    dbHelper = DbHelper();
  }

  SingUp() {
    final Form = _formKey.currentState;

    String uid = _conUserId.text;
    String uname = _conUserName.text;
    String email = _conEmail.text;
    String telefono = _conTelefono.text;
    String Password = _conPassword.text;
    String CPassword = _conCPassword.text;

    if (_formKey.currentState.validate()) {
      if (Password != CPassword) {
        alertDialog(context, 'la contraseña coincide');
      } else {
        _formKey.currentState.save();

        UserModel uModel = UserModel(uid, uname, email, telefono, Password);
        await dbHelper.saveData(uModel).then((userData) {
          alertDialog(context, "guardado exitoso");

          Navigator.push(
              context, MaterialPageRoute(builder: (_) => loginPage()));
        }).catchError((error) {
          print(error);
          alertDialog(context, "Error: fallo en guardar");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
      //metodo texto
                  genLoginSingupHeader('Sing Up'),
      //metodo usuarioid
                  GetTextFormField(
                      controller: _conUserId,
                      icon: Icons.person,
                      inputType: TextInputType.name,
                      hintName: 'user name'),
                  SizedBox(
                    height: 5.0,
                  ),
      //metodo usuarioid
                  GetTextFormField(
                      controller: _conUserName,
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
                      onPressed:(){
                        SingUp ();
                      } 
                      
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
                                MaterialPageRoute(builder: (_) => loginPage()),
                                //(Route<dynamic> route)=> false
                                );
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
      ),
    );
  }
}
