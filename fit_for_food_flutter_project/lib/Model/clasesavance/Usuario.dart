class Usuario {
  // Propiedades

  String _correo ;
  String _contrasenia;
  String _codSesion;
  int _ultimoCambioContrasenia;
  bool _isPremium;
  String _idPremium;

 Personas(String correo, String contrasenia, String codSesion, int ultimoCambioContrasenia,
 bool isPremium, String idPremium){
     this._correo = correo;
     this._contrasenia = contrasenia;
     this._codSesion = codSesion;
     this._ultimoCambioContrasenia = ultimoCambioContrasenia;
     this._isPremium = isPremium;
     this._idPremium = idPremium;

 }
  void Usuario(){

  }


}