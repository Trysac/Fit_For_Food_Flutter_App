import 'package:fit_for_food_flutter_project/View/Menu/Foods/Page/listado_alimentos_page.dart';
import 'package:flutter/material.dart';

import 'Page/filter_local_list_page.dart';
import 'Page/filter_network_list_page.dart';

class ComidasPage extends StatefulWidget {
  ComidasPage({Key? key}) : super(key: key);

  @override
  _ComidasPageState createState() => _ComidasPageState();
}

class _ComidasPageState extends State<ComidasPage> {
  // Se usa 2 para ir al listado_alimentos_page.dart------------------------------------------
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builPages(),
    );
  }

  Widget builPages() {
    switch (index) {
      case 0:
        return FilterLocalListPage(); // No usado
      case 1:
        return FilterNetworkListPage(); // No usado
      case 2:
        return ListadoAlimentos(); // OK
      default:
        return Container();
    }
  }
}
