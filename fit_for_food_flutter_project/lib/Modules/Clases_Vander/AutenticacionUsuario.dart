// CLASE DE COLOR ROJO SEGÚN  EL DIAGRAMA FÍSICO
class AutenticacionUsuario {
  //ATRIBUTOS
  String _correo = "";
  String _contrasena = "";
  String _codSesion = "";
  bool _isValid = false;
  //GETTERS AND SETTERS
  String get correo => _correo;
  set correo(String correo) {
    _correo = correo;
  }

  String get contrasena => _contrasena;
  set contrasena(String contrasena) {
    _contrasena = contrasena;
  }

  String get codSesion => _codSesion;
  set codSesion(String codSesion) {
    _codSesion = codSesion;
  }

  bool get isValid => _isValid;
  set isValid(bool isValid) {
    _isValid = isValid;
  }
}

// MÉTODOS
_autenticacionUsuario() {}
bool _consumirApiAutenticacion() {
  return false; // Temporal
}
