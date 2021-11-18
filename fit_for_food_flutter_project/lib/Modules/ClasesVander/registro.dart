// ignore: file_names
// ignore: file_names
// CLASE DE COLOR AZUL SEGÚN  EL DIAGRAMA FÍSICO
class Registro {
  // ATRIBUTOS
  double _valor = 0;
  String _fecha = ""; // Fecha como cadena
  // GETTERS AND SETTERS
  double get valor => _valor;
  set valor(double valor) {
    _valor = valor;
  }

  String get fecha => _fecha;
  set fecha(String fecha) {
    _fecha = fecha;
  }
}

// ENUM
enum EnumTipoRegistro { textoPrueba }
// MÉTODO
_registro() {}
