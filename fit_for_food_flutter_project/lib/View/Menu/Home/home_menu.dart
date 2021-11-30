import 'package:fit_for_food_flutter_project/Modules/consumo_models.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Page/listado_consumo_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:async';
// SERVICIO: Hacer peticiones HTTP
import 'dart:convert';
import 'package:http/http.dart' as http;

// HOME MENU (desayuno - almuerzo - cena)-----------------------------------------------------
class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  /*
  INICIO SERVICES_REGISTRAR ALIMENTO --------------------------------------------------------------
   NOTA: Luego se optimizará el código para trabajarlo separado
   POST: REGISTRAR CONSUMO
   https://pruebafirebaserest-default-rtdb.firebaseio.com/consumo.json
*/
  // Funciones para leer del flutter secure Storage
  final _storage = new FlutterSecureStorage();
  Future<String> readToken() async {
    return await _storage.read(key: 'token') ?? '';
  }

  Future<String> readId() async {
    return await _storage.read(key: 'idusuario') ?? '';
  }

  final List<ConsumoAlimentos> _listConsumo = [];

  Future _listarConsumo() async {
    String _token = await readToken();
    String _idusuario = await readId();

    print("ID USUARIO: " + _idusuario);
    final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
    /*String url =
      "https://pruebafirebaserest-default-rtdb.firebaseio.com/consumo.json";
    Uri uri = Uri.parse(url);*/
    final url = Uri.https(_baseUrl, 'usuarios/$_idusuario/consumo.json',
        {'auth': await _storage.read(key: 'token') ?? ''});
    final response = await http.get(url);
    if (json.decode(response.body) == null) return _listConsumo;
    final Map<String, dynamic> consumoMap = json.decode(response.body);

    //Imprimir Json
    print("PAGE/LISTADO CONSUMO: cargar alimentos");
    consumoMap.forEach((key, value) {
      final _temp = ConsumoAlimentos.fromMap(value);
      _temp.id = key;
      this._listConsumo.add(_temp);
    });
    return this._listConsumo;
  }

//FIN SERVICES_REGISTRAR ALIMENTO -----------------------------------------------------------
  //USADOS PARA EL LISTADO DE ALIMENTOS
  late List<ConsumoAlimentos> _listconsumo = [];
  List<ConsumoAlimentos> _dataConsumo = [];
  // LISTAS AUXILIARES
  late List<ConsumoAlimentos> _listOtros = [];
  late List<ConsumoAlimentos> _listDesayuno = [];
  late List<ConsumoAlimentos> _listAlmuerzo = [];
  late List<ConsumoAlimentos> _listCena = [];
  late List<ConsumoAlimentos> _listMostrar = [];

  //LISTADO COMBO BOX
  List<String> _horarioAlimento = ['Otros', 'Desayuno', 'Almuerzo', 'Cena'];
  String _horarioSeleccionado = "Otros";
  // COMBO BOX para listado de alimento (desayuno - almuerzo - cena)
  List<DropdownMenuItem<String>> _getHorarioDropdown() {
    List<DropdownMenuItem<String>> listaHorario = [];
    _horarioAlimento.forEach((_horario) {
      listaHorario
          .add(DropdownMenuItem(child: Text(_horario), value: _horario));
    });
    return listaHorario;
  }

  // INIT STATE
  @override
  void initState() {
    super.initState();
    _listarConsumo().then((value) {
      setState(() {
        _dataConsumo.addAll(value);
        print("PAGE/LISTADO CONSUMO: dataAlimento");
        print(_dataConsumo);
        _listconsumo = _dataConsumo;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            // CALENDARIO (DÍA ACTUAL) --------------------------------------------------------
            _CalendarToday(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            const Text(
              'Calorías totales',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // BARRA DE PROGRESO -------------------------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomPaint(
                  painter: OpenPainter1(),
                ),
                CustomPaint(
                  painter: OpenPainter2(),
                )
              ],
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    '713 cal / 2000 ~ cal',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            // DROPDOWN - CHECKBOX PARA LISTAR CONSUMO DE USUARIO -------------------------
            // Seleccionar listado de alimentos -------
            // Texto
            Row(children: [
              Text("Seleccionar horario de listado"),
              SizedBox(width: 5),
              Icon(Icons.watch_later_outlined),
            ]),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            // Combobox (dropdown) horario ............
            Row(children: [
              Expanded(
                child: DecoratedBox(
                  decoration: const ShapeDecoration(
                    color: Colors.white30,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    child: DropdownButton(
                      iconSize: 45,
                      iconEnabledColor: Colors.green,
                      isExpanded: true,
                      value: _horarioSeleccionado,
                      items: _getHorarioDropdown(),
                      onChanged: (_opt) {
                        print(_opt);
                        setState(() {
                          _horarioSeleccionado = _opt.toString();
                          //TODO: Mostrar pantalla --------------
                        });
                      },
                    ),
                  ),
                ),
              ),
            ]),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            // Listado ------------------------------------------------------------

            ListadoConsumoHorario(
                listMostrar: _listconsumo,
                horarioSeleccionado: _horarioSeleccionado),

            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
          ],
        ),
      ),
    );
  }

/* <------------------------------ MÉTODOS ADICIONALES ------------------------------> */

}

// CALENDARIO (DÍA ACTUAL) --------------------------------------------------------------
Widget _CalendarToday() {
  DateTime date = DateTime.now();
  List<String> month = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Dicembre'
  ];

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
      ),
      const Icon(
        Icons.calendar_today_rounded,
        color: Colors.black54,
        size: 20.0,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
      ),
      Text(
        '${date.day} ${month[date.month - 1]}',
        style: const TextStyle(fontSize: 20.0),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
      ),
    ],
  );
}

// PINTADO 1--------------------------------------------------------------------------------
class OpenPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.green.shade400
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(20, 15) & const Size(120, 10), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// PINTADO 1--------------------------------------------------------------------------------
class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.green.shade200
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(140, 15) & const Size(170, 10), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
