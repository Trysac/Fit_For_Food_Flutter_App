import 'dart:convert';

import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';

class FoodsApi {
  static get http => null;

  static Future<List<Food>> getBooks(String query) async {
    final url = Uri.parse(
        'https://gist.githubusercontent.com/mrivera28/1c52b61b245695ac09c3c308fbf3ea75/raw/a01ccac5d487bfbfd15dbb9e0f19bff94bbcb4b8/foods.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List foods = json.decode(response.body);

      return foods.map((json) => Food.fromJson(json)).where((food) {
        final titleLower = food.name.toLowerCase();
        final authorLower = food.calorias.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower) ||
            authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }

  static getFoods(String query) {}
}