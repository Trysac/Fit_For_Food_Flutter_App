class ConfiguracionGeneral {
  // Propiedades

  enum _objetivo ;
  double _caloriasDiarias;
  double _promedioConsumoCalorias;
  double _objetivoConsumoAgua;
  double _promedioConsumoAgua;
  int _objetivoDiarioEjercicio;
  double _promedioSemanalDiasEjercicio;

 Personas(double caloriasDiarias, double promedioConsumoCalorias,double objetivoConsumoAgua, 
 double promedioConsumoAgua, int objetivoDiarioEjercicio, double promedioSemanalDiasEjercicio){
     this._caloriasDiarias = caloriasDiarias;
     this._promedioConsumoCalorias = promedioConsumoCalorias;
     this._objetivoConsumoAgua = objetivoConsumoAgua;
     this._promedioConsumoAgua = promedioConsumoAgua;
     this._objetivoDiarioEjercicio = objetivoDiarioEjercicio;
     this._promedioSemanalDiasEjercicio = promedioSemanalDiasEjercicio;

 }
   ConfiguracionGeneral(){

  }
  void ActualizarConfiguracion(){}
  void ActualizarObjetivo(_objetivo){}
  void AtualizacionPromedios(){}
  void ActualizacionCalorias(){}
  void ActualizacionObjetivoConsumoAgua(){}

}