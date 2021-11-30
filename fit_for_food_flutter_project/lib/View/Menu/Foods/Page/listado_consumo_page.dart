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
    List<ConsumoAlimentos> listTemp = _condicionalListado();

    return Align(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: listTemp.length,
        itemBuilder: (context, index) {
          final alimento = listTemp[index];

          return buildFood(alimento);
        },
      ),
    );
  }

  // Método para filtrar por día y horario de comida
  List<ConsumoAlimentos> _condicionalListado() {
    List<ConsumoAlimentos> _listOtros = [];
    List<ConsumoAlimentos> _listDesayuno = [];
    List<ConsumoAlimentos> _listAlmuerzo = [];
    List<ConsumoAlimentos> _listCena = [];
    List<ConsumoAlimentos> _listTemp = [];

    if (horarioSeleccionado == "Otros") {
      // Filtrado de OTROS
      //_listOtros = [];
      for (var i = 0; i < listMostrar.length; i++) {
        if (listMostrar[i].horario == "Otros" &&
            listMostrar[i].day == DateTime.now().day &&
            listMostrar[i].month == DateTime.now().month &&
            listMostrar[i].year == DateTime.now().year) {
          _listOtros.add(listMostrar[i]);
        }
      }
      _listTemp = _listOtros;
      return _listTemp;
    } else if (horarioSeleccionado == "Desayuno") {
      //DESAYUNO
      _listDesayuno = [];
      for (var i = 0; i < listMostrar.length; i++) {
        if (listMostrar[i].horario == "Desayuno" &&
            listMostrar[i].day == DateTime.now().day &&
            listMostrar[i].month == DateTime.now().month &&
            listMostrar[i].year == DateTime.now().year) {
          _listDesayuno.add(listMostrar[i]);
        }
      }
      _listTemp = _listDesayuno;
      return _listTemp;
    } else if (horarioSeleccionado == "Almuerzo") {
      // Filtrado de ALMUERZO
      _listAlmuerzo = [];
      for (var i = 0; i < listMostrar.length; i++) {
        if (listMostrar[i].horario == "Almuerzo" &&
            listMostrar[i].day == DateTime.now().day &&
            listMostrar[i].month == DateTime.now().month &&
            listMostrar[i].year == DateTime.now().year) {
          _listAlmuerzo.add(listMostrar[i]);
        }
      }
      _listTemp = _listAlmuerzo;
      return _listTemp;
    } else if (horarioSeleccionado == "Cena") {
      // Filtrado de CENA
      _listCena = [];
      for (var i = 0; i < listMostrar.length; i++) {
        if (listMostrar[i].horario == "Cena" &&
            listMostrar[i].day == DateTime.now().day &&
            listMostrar[i].month == DateTime.now().month &&
            listMostrar[i].year == DateTime.now().year) {
          _listCena.add(listMostrar[i]);
        }
      }
      _listTemp = _listCena;
      return _listTemp;
    } else {
      _listTemp = [];
      return _listTemp;
    }
    ;
  }
}

// LISTADO DE ALIMENTOS.-----------------------------------------------------------------------
Widget buildFood(ConsumoAlimentos dataConsumo) {
  String? ml = "ml";
  String? gr = "gr";
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.network(
          dataConsumo.imagen,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
        Text(
          dataConsumo.nombre,
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          textAlign: TextAlign.end,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black54, fontSize: 14.0),
                children: [
                  TextSpan(text: "${dataConsumo.medida}"),
                  if (dataConsumo.tipo == "Bebida")
                    TextSpan(text: "${ml}\n")
                  else
                    TextSpan(
                      text: "${gr}\n",
                    ),
                  TextSpan(
                    text: "${dataConsumo.calorias} calorías",
                  ),
                ]),
            textAlign: TextAlign.end,
          ),
        )
      ],
    ),
    const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
  ]);

  return ListTile(
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
    trailing: Column(mainAxisSize: MainAxisSize.min),
  );
}
