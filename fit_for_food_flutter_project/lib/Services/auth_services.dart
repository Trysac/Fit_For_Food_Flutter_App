import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// usuario: vander123@gmail.com
// contraseña: 123456
class AuthServices extends ChangeNotifier {
  final String _baseURL = 'identitytoolkit.googleapis.com';
  // token de acceso a la API de FIREBASE
  final String _firebaseToken = 'AIzaSyDfNuzYDUZcxaVlTISQmJwjaXd4S5Zf_ho';
  // LIBRERÍA para almacenar token
  final storage = new FlutterSecureStorage();
  //LOGIN
  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };
    final url = Uri.https(
        _baseURL, 'v1/accounts:signInWithPassword', {'key': _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodeResp = json.decode(resp.body);
    print('AUTH SERVICES: Login');
    print(decodeResp);
    if (decodeResp.containsKey('idToken')) {
      // Token: hay que guardarlo en lugar seguro
      // Write value
      await storage.write(key: 'token', value: decodeResp['idToken']);
      print("SERVICES/AUTH SERVICES: Token : ${storage.read(key: 'token')}");
      // Write value
      await storage.write(key: 'localId', value: decodeResp['localId']);
      print(
          "SERVICES/AUTH SERVICES: LocalID : ${storage.read(key: 'localId')}");
      //decodeResp['idToken']
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

  // verificar si hay TOKEN (si o si se devolverá string)
  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
