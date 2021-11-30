import 'package:flutter/material.dart';

class NotificationsServices {
  String mensajePersonalizado = "";
  // No  necesita redibujar, solo métodos y propiedades estáticas
  // Mantener estado de una llave
  static late GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String message) {
    String mensajePersonalizado = "";
    mensajePersonalizado = loginCorreoMensaje(message);

    final snackbar = new SnackBar(
        content: Text(mensajePersonalizado,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20)));
    messengerKey.currentState?.showSnackBar(snackbar);
  }
}

String loginCorreoMensaje(String message) {
  if (message == "EMAIL_NOT_FOUND")
    return "Email no encontrado";
  else if (message == "INVALID_PASSWORD") {
    return "Contraseña incorrecta";
  } else {
    return message;
  }
}
