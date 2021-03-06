import 'package:flutter/material.dart';

import 'account_validation_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child: Image.asset('assets/images/logo.png')),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
                  Row(children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.green, width: 4.0))),
                        child: const Text('Crea una cuenta',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)))
                  ]),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          labelText: 'Nombres',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person))),
                  const SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      )),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contrase??a',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AccountValidationPage()));
                          },
                          color: Colors.green,
                          child: const Text('Registrarse',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white))))
                ]))));
  }
}
