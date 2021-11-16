// CLASE DE COLOR ROJO SEGÚN  EL DIAGRAMA FÍSICO
class ConsultasBD {
  String _codSesionUsuario = "";
  // GETTERS AND SETTERS
  String get codSesionUsuario => _codSesionUsuario;
  set codSesionUsuario(String codSesionUsuario) {
    _codSesionUsuario = codSesionUsuario;
  }
}

// ENUM
enum EnumTipo { textoPrueba }
enum EnumApiDestino { textoPrueba }
// MÉTODOS
_consultasBD() {}
void _envioConsulta() {}
bool _usuarioAutenticado() {
  return false;
}
