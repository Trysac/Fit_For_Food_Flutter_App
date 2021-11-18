import 'dart:async';

import 'package:fit_for_food_flutter_project/Modules/alimentos_models.dart';
import 'package:fit_for_food_flutter_project/Services/alimento_services.dart';
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
  //List<Food> foods = [];
  //Timer? debouncer;
  // CARGA COMIDA
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json
  String url =
      "https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json";
  final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
  final List<Alimentos> listAlimentos = [];
  Future<List<Alimentos>> cargarAlimentosA() async {
    // final url = Uri.http(_baseUrl, "alimentos.json");
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final Map<String, dynamic> alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("ALIMENTOS_SERVICES: cargarAlimentos");
    alimentosMap.forEach((key, value) {
      final temp = Alimentos.fromMap(value);
      temp.id = key;
      this.listAlimentos.add(temp);
    });
    return this.listAlimentos;
  }

  //USADOS
  late List<Alimentos> alimentos = [];
  String query = '';
  List<Alimentos> dataAlimentos = [];

  @override
  void initState() {
    super.initState();
    cargarAlimentosA().then((value) {
      setState(() {
        dataAlimentos.addAll(value);
        print("FILTER_NETWORK... : dataAlimento");
        print(dataAlimentos);
        alimentos = dataAlimentos;
      });
    });
  }

/*
  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }

    debouncer = Timer(duration, callback);
  }

  Future init() async {
    final foods = await FoodsApi.getFoods(query);

    setState(() => this.foods = foods);
  }
*/

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
      final caloriasAlimento = alimento.calorias.toLowerCase();
      final tipoAlimento = alimento.tipo.toLowerCase();
      final palabraBuscar = query.toLowerCase();
      print("buscando");
      return nombreAlimento.contains(palabraBuscar) ||
          caloriasAlimento.contains(palabraBuscar) ||
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
          print('FILTER_NETWORK: Alimento presionado');
        },
      ),
    );
  }
}
