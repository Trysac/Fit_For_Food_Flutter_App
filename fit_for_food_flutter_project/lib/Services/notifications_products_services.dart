import 'package:flutter/material.dart';

class NotificationsProductsServices {
  // No  necesita redibujar, solo métodos y propiedades estáticas
  // Mantener estado de una llave
  static late GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String message) {
    String _mensajelocal = "Producto registrado!";
    _mensajelocal = message;
    print('hola');
    final snackbar = new SnackBar(
        content: Text(_mensajelocal,
            style: TextStyle(color: Colors.white, fontSize: 20)));
    messengerKey.currentState?.showSnackBar(snackbar);
  }
}
