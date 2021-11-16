import 'package:fit_for_food_flutter_project/View/Menu/Foods/Data/food_data.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';
import 'package:fit_for_food_flutter_project/View/Menu/Foods/Widget/search_widget.dart';
import 'package:flutter/material.dart';

class FilterLocalListPage extends StatefulWidget {
  @override
  FilterLocalListPageState createState() => FilterLocalListPageState();
}

class FilterLocalListPageState extends State<FilterLocalListPage> {
  late List<Food> foods;
  String query = '';

  @override
  void initState() {
    super.initState();

   foods = allFoods;
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
                Text(food.peso, 
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
        ),
      );

  void searchFood(String query) {
    final foods = allFoods.where((food) {
      final titleLower = food.name.toLowerCase();
      final authorLower = food.calorias.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.foods = foods;
    });
  }
}