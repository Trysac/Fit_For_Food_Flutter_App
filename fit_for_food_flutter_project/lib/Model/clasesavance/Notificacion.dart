class Notificacion{

enum _tipoNotificacion;
int _hora;
int _minuto;
String _mensaje;
bool _repetir;

tipodenoti(enum tipodenotificacion, int hora, int minuto,
String mensaje, bool repetir)
this._tipoNotificacion= tipodenotificacion;
this._hora= hora;
this._minuto= minuto;
this._mensaje= mensaje;
this._repetir= repetir;


Notificacion(){}

}