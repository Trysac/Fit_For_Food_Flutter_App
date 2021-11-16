import 'package:flutter/material.dart';

import '../form_page.dart';

class AccountValidationPage extends StatefulWidget {
  const AccountValidationPage({Key? key}) : super(key: key);

  @override
  _AccountValidationPageState createState() => _AccountValidationPageState();
}

class _AccountValidationPageState extends State<AccountValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Validación de cuenta'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Image.asset('assets/images/validacion.png'),
                  ),
                  //const Padding(padding: EdgeInsets.only(top: 5.0)),
                  // const Text('Validación de cuenta',
                  //     style: TextStyle(
                  //         fontSize: 20.0, fontWeight: FontWeight.bold)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  const Divider(height: 10.0, color: Colors.black54),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  const SizedBox(
                      width: 270.0,
                      child: Text(
                          'Confirmaremos que esta dirección de correo electrónico le pertenece.\nIngrese el código de 5 digitos incluido en el mensaje que enviamos a:',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              height: 1.5),
                          textAlign: TextAlign.center)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  const Text('email@gmail.com',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          height: 1.5)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  SizedBox(
                      width: 180.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Código',
                          hintStyle: TextStyle(letterSpacing: 0.0),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        style: const TextStyle(letterSpacing: 20.0),
                        textAlign: TextAlign.center,
                        maxLength: 5,
                      )),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0)),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormPage()));
                          },
                          color: Colors.green,
                          child: const Text('Enviar',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white)))),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  SizedBox(
                      width: 240.0,
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14.0),
                              children: [
                                TextSpan(text: 'Al presionar en '),
                                TextSpan(
                                    text: 'Enviar',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ', acepta las '),
                                TextSpan(
                                    text: 'Condiciones del Servicio',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' y la '),
                                TextSpan(
                                    text: 'Política de Privacidad',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                          textAlign: TextAlign.center))
                ]))));
  }
}
