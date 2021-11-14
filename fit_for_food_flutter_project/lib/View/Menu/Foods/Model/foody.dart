class Food {
  final int id;
  final String name;
  final String calorias;
  final String imagen;
  final String peso;

  const Food({
    required this.id,
    required this.name,
    required this.calorias,
    required this.imagen,
    required this.peso,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json['id'],
        name: json['name'],
        calorias: json['calorias'],
        imagen: json['imagen'],
        peso: json['peso'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'calorias': calorias,
        'urlImage': imagen,
        'peso': peso,
      };
}