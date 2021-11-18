class ConfiguracionGeneral {
  // Propiedades

  //enum _objetivo ;
  double _caloriasDiarias = 0;
  double _promedioConsumoCalorias = 0;
  double _objetivoConsumoAgua = 0;
  double _promedioConsumoAgua = 0;
  int _objetivoDiarioEjercicio = 0;
  double _promedioSemanalDiasEjercicio = 0;

  Personas(
      double caloriasDiarias,
      double promedioConsumoCalorias,
      double objetivoConsumoAgua,
      double promedioConsumoAgua,
      int objetivoDiarioEjercicio,
      double promedioSemanalDiasEjercicio) {
    this._caloriasDiarias = caloriasDiarias;
    this._promedioConsumoCalorias = promedioConsumoCalorias;
    this._objetivoConsumoAgua = objetivoConsumoAgua;
    this._promedioConsumoAgua = promedioConsumoAgua;
    this._objetivoDiarioEjercicio = objetivoDiarioEjercicio;
    this._promedioSemanalDiasEjercicio = promedioSemanalDiasEjercicio;
  }
}
