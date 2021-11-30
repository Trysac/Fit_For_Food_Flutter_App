import 'dart:async';
import 'package:fit_for_food_flutter_project/Modules/ClasesVander/producto_alimento.dart';
import 'package:fit_for_food_flutter_project/Modules/alimentos_models.dart';
import 'package:fit_for_food_flutter_project/Modules/consumo_models.dart';
import 'package:fit_for_food_flutter_project/Services/alimento_services.dart';
import 'package:fit_for_food_flutter_project/Services/notifications_products_services.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Api/foods_api.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:http/http.dart' as http;
// SERVICIO: Hacer peticiones HTTP
import 'dart:convert';

class ListadoAlimentos extends StatefulWidget {
  @override
  ListadoAlimentosState createState() => ListadoAlimentosState();
}

class ListadoAlimentosState extends State<ListadoAlimentos> {
/*  
  -----------------SERVICES - CARGAR ALIMENTOS----------------------
   NOTA: Luego se optimizará para trabajarlo separado

   GET: LISTAR ALIMENTOS
   https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json
*/
  final String _baseUrl = "prueba2firebaserest-default-rtdb.firebaseio.com";
  final List<Alimentos> _listAlimentos = [];

  Future<List<Alimentos>> _listarAlimentos() async {
    String url =
        "https://prueba2firebaserest-default-rtdb.firebaseio.com/alimentos.json";
    // final url = Uri.http(_baseUrl, "alimentos.json");
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final Map<String, dynamic> alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("PAGE/LISTADO ALIMENTO: cargar alimentos");
    alimentosMap.forEach((key, value) {
      final _temp = Alimentos.fromMap(value);
      _temp.id = key;
      this._listAlimentos.add(_temp);
    });
    return this._listAlimentos;
  }

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

  Future _registrarConsumo(ConsumoAlimentos consumo) async {
    String _token = await readToken();
    String _idusuario = await readId();

    final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
    /*
    String url =
        "https://pruebafirebaserest-default-rtdb.firebaseio.com/consumo.json";
    Uri uri = Uri.parse(url);*/
    final url = Uri.https(_baseUrl, 'usuarios/$_idusuario/consumo.json',
        {'auth': await _storage.read(key: 'token') ?? ''});

    final response = await http.post(url, body: consumo.toJson());
    final decodedData = json.decode(response.body);
    print("PAGE/LISTADO ALIMENTO: registrar consumo de alimento");
    print(decodedData);
    consumo.id = decodedData['name'];
    return consumo.id!;
  }
//FIN SERVICES_REGISTRAR ALIMENTO -----------------------------------------------------------

  //USADOS PARA EL LISTADO DE ALIMENTOS
  late List<Alimentos> _alimentos = [];
  String query = "";
  List<Alimentos> _dataAlimentos = [];

  // INIT STATE
  @override
  void initState() {
    super.initState();
    _listarAlimentos().then((value) {
      setState(() {
        _dataAlimentos.addAll(value);
        print("PAGE/LISTADO ALIMENTO: dataAlimento");
        print(_dataAlimentos);
        _alimentos = _dataAlimentos;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          buildSearch(),
          Expanded(
            child: ListView.builder(
              itemCount: _alimentos.length,
              itemBuilder: (context, index) {
                final alimento = _alimentos[index];

                return buildFood(alimento);
              },
            ),
          ),
        ],
      ),
    );
  }

  // BUSCADOR_GENERAL-------------------------------------------------------------------------
  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Buscar',
        onChanged: searchFood,
      );
  // BUSCADOR_COMIDA -------------------------------------------------------------------------
  void searchFood(String query) {
    final alimentos = _dataAlimentos.where((alimento) {
      final nombreAlimento = alimento.nombre.toLowerCase();
      //final caloriasAlimento = alimento.calorias.toLowerCase();
      final tipoAlimento = alimento.tipo.toLowerCase();
      final palabraBuscar = query.toLowerCase();
      print("buscando");
      return nombreAlimento.contains(palabraBuscar) ||
          tipoAlimento.contains(palabraBuscar);
    }).toList();

    setState(() {
      this.query = query;
      this._alimentos = alimentos;
    });
  }

// LISTADO DE ALIMENTOS.-----------------------------------------------------------------------
  Widget buildFood(Alimentos dataAlimento) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: ListTile(
        leading: Image.network(
          dataAlimento.imagen,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(dataAlimento.nombre),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text("${dataAlimento.tipo} - ${(dataAlimento.medida)} "),
              if (dataAlimento.tipo == "Bebida")
                Text("mililitros")
              else
                Text("gramos")
            ]),
            Text("${dataAlimento.calorias} calorías"),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /*Text(
                "0",
                style: TextStyle(color: Colors.grey),
              )*/
            Icon(Icons.add),
          ],
        ),
        onTap: () {
          print('PAGE/LISTADO: alimento presionado');
          _mostrarAlert(dataAlimento);
        },
      ),
    );
  }

  //  DIALOG DE REGISTRO DE ALIMENTOS -----------------------------------------------------------
  void _mostrarAlert(Alimentos alimento) {
    bool _firstClick = true;
    //LISTADO COMBO BOX
    List<String> _horarioAlimento = ['Otros', 'Desayuno', 'Almuerzo', 'Cena'];
    String _horarioSeleccionado = 'Otros';
    // COMBO BOX para registro de alimento (desayuno - almuerzo - cena)
    List<DropdownMenuItem<String>> getHorarioDropdown() {
      List<DropdownMenuItem<String>> listaHorario = [];
      _horarioAlimento.forEach((_horario) {
        listaHorario
            .add(DropdownMenuItem(child: Text(_horario), value: _horario));
      });
      return listaHorario;
    }

    // DIALOG como tal
    showDialog(
        //Contexto de la página
        context: context,
        //Cerrar ventana desde afuera
        barrierDismissible: true,
        //Función encargada de crear el dialog
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                  //Redondear borde
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text('Registrar consumo de alimento'),
                  content: Column(
                    //Ajustar altura de la columna
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                          'Se registrará el consumo de ${alimento.medida} de ${alimento.nombre}'),
                      //Logo de flutter
                      SizedBox(height: 20),
                      Image(image: NetworkImage(alimento.imagen), height: 100),
                      SizedBox(height: 20),

                      // Seleccionar listado de alimentos -------
                      // Texto
                      Row(children: [
                        Text("Seleccionar horario de registro"),
                        SizedBox(width: 5),
                        Icon(Icons.watch_later_outlined),
                      ]),
                      SizedBox(height: 10),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
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
                                items: getHorarioDropdown(),
                                onChanged: (opt) {
                                  print(opt);
                                  setState(() {
                                    _horarioSeleccionado = opt.toString();
                                    //TODO: Agregar guardado de horario --------------
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  // ACTION - GUARDAR CONSUMO DE ALIMENTO---------------------------------
                  actions: [
                    //Botones de texto
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancelar')),
                    TextButton(
                        onPressed: () async {
                          if (_firstClick) {
                            _firstClick = false;
                            await _registrarConsumo(ConsumoAlimentos(
                                calorias: alimento.calorias,
                                day: DateTime.now().day,
                                horario: _horarioSeleccionado,
                                imagen: alimento.imagen,
                                medida: alimento.medida,
                                month: DateTime.now().month,
                                nombre: alimento.nombre,
                                tipo: alimento.tipo,
                                year: DateTime.now().year));

                            // PRINT para verificar valores que se registraron en el consumo
                            print("calorías: ${alimento.calorias}");
                            print("día: ${DateTime.now().day}");
                            print("horario: ${_horarioSeleccionado}");
                            print("medida: ${alimento.medida}");
                            print("mes: ${DateTime.now().month}");
                            print("nombre: ${alimento.nombre}");
                            print("tipo: ${alimento.tipo}");
                            print("año: ${DateTime.now().year}");

                            Navigator.of(context).pop();
                          } else {}
                        },
                        child: Text('Aceptar'))
                  ]);
            },
          );
        });
  }
}
