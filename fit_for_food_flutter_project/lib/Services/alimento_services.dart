import 'package:fit_for_food_flutter_project/Modules/alimentos_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
// SERVICIO: Hacer peticiones HTTP
import 'dart:convert';

class AlimentoServices extends ChangeNotifier {
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json
  final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
  final List<Alimentos> listAlimentos = [];
  Future<List<Alimentos>> cargarAlimentos() async {
    final url = Uri.http(_baseUrl, 'alimentos.json');
    final response = await http.get(url);
    final Map<String, dynamic> alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("ALIMENTOS_SERVICES: cargarAlimentos");
    alimentosMap.forEach((key, value) {
      final temp = Alimentos.fromMap(value);
      temp.id = key;
      this.listAlimentos.add(temp);
    });
    notifyListeners();
    return this.listAlimentos;
  }
}
