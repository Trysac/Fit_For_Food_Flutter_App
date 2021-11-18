// To parse this JSON data, do
//
//     final alimentos = alimentosFromMap(jsonString);

import 'dart:convert';

class Alimentos {
  Alimentos(
      {required this.calorias,
      required this.imagen,
      required this.medida,
      required this.nombre,
      required this.tipo,
      this.id});

  String calorias;
  String imagen;
  String medida;
  String nombre;
  String tipo;
  String? id;

  factory Alimentos.fromJson(String str) => Alimentos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Alimentos.fromMap(Map<String, dynamic> json) => Alimentos(
        calorias: json["calorias"],
        imagen: json["imagen"],
        medida: json["medida"],
        nombre: json["nombre"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toMap() => {
        "calorias": calorias,
        "imagen": imagen,
        "medida": medida,
        "nombre": nombre,
        "tipo": tipo,
      };
}
