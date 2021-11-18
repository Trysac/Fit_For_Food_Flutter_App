// To parse this JSON data, do
//
//     final alimentos = alimentosFromMap(jsonString);

import 'dart:convert';

class ConsumoAlimentos {
  ConsumoAlimentos(
      {required this.calorias,
      required this.day,
      required this.month,
      required this.nombre,
      required this.tipo,
      required this.year,
      this.id});

  int calorias;
  int day;
  int month;
  String nombre;
  String tipo;
  int year;
  String? id;
  factory ConsumoAlimentos.fromJson(String str) =>
      ConsumoAlimentos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConsumoAlimentos.fromMap(Map<String, dynamic> json) =>
      ConsumoAlimentos(
        calorias: json["calorias"],
        day: json["day"],
        month: json["month"],
        nombre: json["nombre"],
        tipo: json["tipo"],
        year: json["year"],
      );

  Map<String, dynamic> toMap() => {
        "calorias": calorias,
        "day": day,
        "month": month,
        "nombre": nombre,
        "tipo": tipo,
        "year": year,
      };
}
