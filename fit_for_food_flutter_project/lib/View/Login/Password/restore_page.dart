import 'package:flutter/material.dart';

import 'recover_page.dart';

class RestorePage extends StatefulWidget {
  RestorePage({Key? key}) : super(key: key);

  @override
  _RestorePageState createState() => _RestorePageState();
}

class _RestorePageState extends State<RestorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Restablecer contraseña'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 130.0,
                    width: 130.0,
                    child: Image.asset('assets/images/cerrar.png'),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  SizedBox(height: 20.0),
                  Divider(height: 10.0, color: Colors.black54),
                  SizedBox(height: 20.0),
                  SizedBox(
                    width: 270.0,
                    child: Text(
                      'Te enviaremos un código que podrás usar para iniciar sesión',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  SizedBox(
                    width: 270.0,
                    child: Text(
                      'Ingresa tu correo electrónico',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      )),
                  const SizedBox(height: 20.0),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecoverPage()),
                        );
                      },
                      color: Colors.green,
                      child: const Text(
                        'Siguiente',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
