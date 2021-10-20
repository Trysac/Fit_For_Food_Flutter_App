class RegistroValores {
  // ATRIBUTOS
  bool _registroCompletado = false;
  List _registros = []; // arreglo de registro
  String _fecha = ""; // Fecha como cadena
  bool _usoLista = false;
  int _idProductoLista = 0;
  // GETTERS AND SETTERS
  bool get registroCompletado => _registroCompletado;
  set registroCompletado(bool registroCompletado) {
    _registroCompletado = registroCompletado;
  }

  List get registros => _registros;
  set registros(List registros) {
    _registros = registros;
  }

  String get fecha => _fecha;
  set fecha(String fecha) {
    _fecha = fecha;
  }

  bool get usoLista => _usoLista;
  set usoLista(bool usoLista) {
    _usoLista = usoLista;
  }

  int get idProductoLista => _idProductoLista;
  set idProductoLista(int idProductoLista) {
    _idProductoLista = idProductoLista;
  }
}

//ENUM
enum tipo { textoPrueba }
// MÉTODO
_registroValores() {}
_registrarValores(List datos) {}
_validarAutenticacionUsuario() {}
