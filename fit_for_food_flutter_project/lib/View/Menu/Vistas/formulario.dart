
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

class FormularioPage extends StatefulWidget {
  FormularioPage({Key? key}) : super(key: key);

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //SizedBox(height: 10),
                
              ]
            )
          )
        )
      )
    );
  }
}