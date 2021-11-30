import 'package:fit_for_food_flutter_project/Providers/login_form_provider.dart';
import 'package:fit_for_food_flutter_project/Services/auth_services.dart';
import 'package:fit_for_food_flutter_project/Services/notifications_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Menu/home_page.dart';
import 'Password/restore_page.dart';
import 'Register/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            // AGREGADO : Se envolvió la clase _LoginForm  en un Change..
            child: ChangeNotifierProvider(
                create: (_) => LoginFormProvider(), child: _LoginForm()),
          ),
        ),
      ),
    );
  }
}

// AGREGADO: Clase separada para usar un child del ChangeNotifierProvider
class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AGREGADO : Variable para enlazar al ChangeNotifierProvider
    final loginform = Provider.of<LoginFormProvider>(context);
    return Form(
      // AGREGADO: después de separar _LoginForm en una clase
      key: loginform.formKey,
      // AGREGADO (Se envolvió en un Form para usar autovalidateMode)
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 210.0,
            width: 210.0,
            child: Image.asset('assets/images/logo.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
            // AGREGADO: Asginar valor del email al login_form_provider
            onChanged: (value) => loginform.email = value,
            validator: (value) {
              // AGREGADO (validar correo)
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = new RegExp(pattern);
              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Ingrese un correo válido';
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: InkWell(
                //onTap: ,
                child: Icon(
                  Icons.visibility,
                ),
              ),
            ),
            // AGREGADO: Asignar valor del password al login_form_provider
            onChanged: (value) => loginform.password = value,
            validator: (value) {
              // AGREGADO (validar contraseña)
              return (value != null && value.length >= 6)
                  ? null
                  : 'La  contraseña debe ser de 6 caracteres';
            },
          ),
          // BOTÓN RECUPERAR CONTRASEÑA--------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestorePage(),
                      ));
                },
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          // BOTÓN INICIAR SESIÓN  -----------------------------------------------------
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: MaterialButton(
              onPressed: loginform.isLoading
                  ? null
                  : () async {
                      // Quitar teclado
                      //FocusScope.of(context).unfocus();
                      //PROVIDER ------------------------
                      //False por estar dentro de un método
                      final authServices =
                          Provider.of<AuthServices>(context, listen: false);
                      // Validar si el formulario es valido
                      if (!loginform.isValidForm()) return;
                      loginform.isloading = true;
                      // Función PROVIDER
                      final String? errorMessage = await authServices.login(
                          loginform.email, loginform.password);
                      // Manejo de error
                      if (errorMessage == null) {
                        Navigator.popAndPushNamed(context, 'homePage');
                      } else {
                        print(errorMessage);
                        // Notificación inferior
                        NotificationsServices.showSnackBar(errorMessage);
                        loginform.isloading = false;
                      }
                    },
              color: Colors.green,
              child: const Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.black,
            height: 30,
          ),
          // BOTÓN REGISTRARSE  -------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''¿Aún no tienes una cuenta? ''',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16.0,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                },
                child: const Text('Registrarse'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
