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
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
// SERVICIO: Hacer peticiones HTTP
import 'dart:convert';

class ListadoAlimentos extends StatefulWidget {
  @override
  ListadoAlimentosState createState() => ListadoAlimentosState();
}

class ListadoAlimentosState extends State<ListadoAlimentos> {
  //-----------------SERVICES - CARGAR ALIMENTOS----------------------
  // NOTA: Luego se optimizará para trabajarlo separado

  // GET: LISTAR ALIMENTOS
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json

  final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
  final List<Alimentos> listAlimentos = [];

  Future<List<Alimentos>> cargarAlimentos() async {
    String url =
        "https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json";
    // final url = Uri.http(_baseUrl, "alimentos.json");
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final Map<String, dynamic> alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("PAGE/LISTADO: cargar alimentos");
    alimentosMap.forEach((key, value) {
      final _temp = Alimentos.fromMap(value);
      _temp.id = key;
      this.listAlimentos.add(_temp);
    });
    return this.listAlimentos;
  }

  //-----------------SERVICES - REGISTRAR ALIMENTO----------------------
  // NOTA: Luego se optimizará para trabajarlo separado
  // POST: REGISTRAR CONSUMO
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/consumo.json

  static Future registrarConsumo(ConsumoAlimentos consumo) async {
    final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
    String url =
        "https://pruebafirebaserest-default-rtdb.firebaseio.com/consumo.json";
    Uri uri = Uri.parse(url);
    final response = await http.post(uri, body: consumo.toJson());
    final decodedData = json.decode(response.body);
    print("PAGE/LISTADO: registrar consumo");
    print(decodedData);
    consumo.id = decodedData['name'];
    return consumo.id!;
  }

  //USADOS PARA EL LISTADO DE ALIMENTOS
  late List<Alimentos> alimentos = [];
  String query = '';
  List<Alimentos> dataAlimentos = [];

  // INIT STATE
  @override
  void initState() {
    super.initState();
    cargarAlimentos().then((value) {
      setState(() {
        dataAlimentos.addAll(value);
        print("FILTER_NETWORK... : dataAlimento");
        print(dataAlimentos);
        alimentos = dataAlimentos;
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
              itemCount: alimentos.length,
              itemBuilder: (context, index) {
                final alimento = alimentos[index];

                return buildFood(alimento);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Buscar',
        onChanged: searchFood,
      );
  void searchFood(String query) {
    final alimentos = dataAlimentos.where((alimento) {
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
      this.alimentos = alimentos;
    });
  }

/*
  Future searchFood(String query) async => debounce(() async {
        final books = await FoodsApi.getFoods(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          this.foods = books;
        });
      });
*/
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
            Text("${dataAlimento.tipo} - ${dataAlimento.medida}"),
            Text("${dataAlimento.calorias + 100} calorías"),
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
          _mostrarAlert(context, dataAlimento);
        },
      ),
    );
  }
}

void _mostrarAlert(BuildContext context, Alimentos alimento) {
  showDialog(
      //Contexto de la página
      context: context,
      //Cerrar ventana desde afuera
      barrierDismissible: true,
      //Función encargada de crear el dialog
      builder: (context) {
        return AlertDialog(
            //Redondear borde
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Registrar consumo'),
            content: Column(
              //Ajustar altura de la columna
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    '¿Está seguro que desea registrar el consumo de ${alimento.medida} de ${alimento.nombre}?'),
                //Logo de flutter
                SizedBox(height: 20),
                Image(image: NetworkImage(alimento.imagen), height: 100)
              ],
            ),
            actions: [
              //Botones de texto
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () async {
                    await ListadoAlimentosState.registrarConsumo(
                        ConsumoAlimentos(
                            calorias: alimento.calorias,
                            day: DateTime.now().day,
                            month: DateTime.now().month,
                            nombre: alimento.nombre,
                            tipo: alimento.tipo,
                            year: DateTime.now().year));
                    // MOSTRAR LO QUE SE VA A MOSTRAR
                    print("calorías: ${alimento.calorias}");
                    print("día: ${DateTime.now().day}");
                    print("mes: ${DateTime.now().month}");
                    print("nombre: ${alimento.nombre}");
                    print("tipo: ${alimento.tipo}");
                    print("año: ${DateTime.now().year}");
                    Navigator.of(context).pop();
                  },
                  child: Text('Aceptar'))
            ]);
      });
}
