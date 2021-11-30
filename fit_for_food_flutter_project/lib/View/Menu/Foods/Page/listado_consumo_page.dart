import 'package:fit_for_food_flutter_project/Modules/consumo_models.dart';
import 'package:flutter/material.dart';

class ListadoConsumoHorario extends StatelessWidget {
  final List<ConsumoAlimentos> listMostrar;
  final String horarioSeleccionado;

  const ListadoConsumoHorario(
      {Key? key, required this.listMostrar, required this.horarioSeleccionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: listMostrar.length,
        itemBuilder: (context, index) {
          final alimento = listMostrar[index];

          return buildFood(alimento);
        },
      ),
    );
  }
}

// LISTADO DE ALIMENTOS.-----------------------------------------------------------------------
Widget buildFood(ConsumoAlimentos dataConsumo) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
    child: ListTile(
      leading: Image.network(
        dataConsumo.imagen,
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      title: Text(dataConsumo.nombre),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text("${dataConsumo.tipo} - ${(dataConsumo.medida)} "),
            if (dataConsumo.tipo == "Bebida")
              Text("mililitros")
            else
              Text("gramos")
          ]),
          Text("${dataConsumo.calorias} calorías"),
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
    ),
  );
}
