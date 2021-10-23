import 'package:fit_for_food_flutter_project/View/Menu/Vistas/home_page.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
