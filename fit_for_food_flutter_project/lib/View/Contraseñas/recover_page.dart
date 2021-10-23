import 'package:fit_for_food_flutter_project/View/Login%20y%20Registro/login_page.dart';
import 'package:flutter/material.dart';

class RecoverPage extends StatefulWidget {
  RecoverPage({Key? key}) : super(key: key);

  @override
  _RecoverPageState createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva contraseña'),
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
                  child: Image.asset('assets/images/llave.png'),
                ),
                const SizedBox(height: 20.0),
                Text('Recuperar contraseña',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                const SizedBox(height: 20.0),
                Divider(height: 10.0, color: Colors.black54),
                const SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Nueva contraseña',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirmar contraseña',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
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
                            builder: (context) =>  LoginPage()),
                      );
                    },
                    color: Colors.green,
                    child: const Text(
                      'Aceptar',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]
            )
          )
        )
      ),
    );
  }
}