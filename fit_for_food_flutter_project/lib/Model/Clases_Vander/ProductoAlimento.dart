class ProductoAlimento {
  // ATRIBUTOS
  String _nombre = "";
  double _calorias = 0;
  int _gradoRecomendacion = 0;
  int _idProducto = 0;

  // GETTERS AND SETTERS
  String get nombre => _nombre;
  set nombre(String nombre) {
    _nombre = nombre;
  }

  double get calorias => _calorias;
  set calorias(double calorias) {
    _calorias = calorias;
  }

  int get gradoRecomendacion => _gradoRecomendacion;
  set gradoRecomendacion(int gradoRecomendacion) {
    _gradoRecomendacion = gradoRecomendacion;
  }

  int get idProducto => _idProducto;
  set idProducto(int idProducto) {
    _idProducto = idProducto;
  }
}

// ENUM
enum tipo { textoPrueba }
enum objetivoCaloricoRelacionado { textoPrueba }
// MÉTODO
_productoAlimento() {}
