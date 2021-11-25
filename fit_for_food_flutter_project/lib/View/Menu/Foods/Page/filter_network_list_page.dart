import 'dart:async';

import 'package:fit_for_food_flutter_project/View/Menu/Foods/Api/foods_api.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Widget/search_widget.dart';
import 'package:flutter/material.dart';

/*
 ------------------------------------------------------------------------------------------
 CLASE NO USADA 
 - Este clase es para listar alimentos de una API en GitHub
 -  OJO: Se está usando en su reemplazo es listado_alimentos_Page.dart
------------------------------------------------------------------------------------------
*/

class FilterNetworkListPage extends StatefulWidget {
  @override
  FilterNetworkListPageState createState() => FilterNetworkListPageState();
}

class FilterNetworkListPageState extends State<FilterNetworkListPage> {
  List<Food> foods = [];
  String query = '';
  Timer? debouncer;

  @override
  void initState() {
    super.initState();

    init();
  }

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

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  final food = foods[index];

                  return buildFood(food);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Buscar',
        onChanged: searchFood,
      );

  Future searchFood(String query) async => debounce(() async {
        final books = await FoodsApi.getFoods(query);

        if (!mounted) return;

        setState(() {
          this.query = query;
          this.foods = books;
        });
      });

  Widget buildFood(Food food) => ListTile(
        leading: Image.network(
          food.imagen,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(food.name),
        subtitle: Text(food.calorias),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              food.peso,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      );
}
