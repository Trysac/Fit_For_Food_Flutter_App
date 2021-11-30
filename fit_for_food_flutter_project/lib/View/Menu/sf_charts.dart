import 'package:fit_for_food_flutter_project/Modules/consumo_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

/* <------------------------------ GRÁFICO_HIDRATACIÓN ------------------------------> */
class SFHydratationLineChart extends StatefulWidget {
  const SFHydratationLineChart({Key? key}) : super(key: key);

  @override
  _SFHydratationLineChartState createState() => _SFHydratationLineChartState();
}

class _SFHydratationLineChartState extends State<SFHydratationLineChart> {
  int largo = 0;
  // Funciones para leer del flutter secure Storage
  final _storage = new FlutterSecureStorage();
  Future<String> readToken() async {
    return await _storage.read(key: 'token') ?? '';
  }

  Future<String> readId() async {
    return await _storage.read(key: 'idusuario') ?? '';
  }

  //-----------------SERVICES - CARGAR CONSUMO ----------------------
  // NOTA: Luego se optimizará para trabajarlo separado

  // GET: LISTAR CONSUMO DE ALIMENTOS
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json

  final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
  final List<ConsumoAlimentos> listBebida = [];

  Future<List<ConsumoAlimentos>> cargarConsumo() async {
    String _token = await readToken();
    String _idusuario = await readId();

    final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";

    final url = Uri.https(_baseUrl, 'usuarios/$_idusuario/consumo.json',
        {'auth': await _storage.read(key: 'token') ?? ''});

    final response = await http.get(url);
    if (json.decode(response.body) == null) return listBebida;
    final Map<String, dynamic> _alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("REPORTE/sf_chart: cargar alimentos");
    _alimentosMap.forEach((key, value) {
      final _temp = ConsumoAlimentos.fromMap(value);
      if (_temp.tipo == "Bebida") {
        _temp.id = key;
        this.listBebida.add(_temp);
      }
    });
    return this.listBebida;
  }

  //USADOS PARA EL LISTADO DE ALIMENTOS
  List<ConsumoAlimentos> dataBebida = [];
  late List<ConsumoAlimentos> lateBebida = [];
  // INIT STATE
  @override
  void initState() {
    super.initState();

    cargarConsumo().then((value) {
      setState(() {
        dataBebida.addAll(value);
        print("REPORTS/WEIGHT : chart calorías");
        print(dataBebida);
        lateBebida = dataBebida;
      });
    });
  }

  DateTime minDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maxDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    List<ChartData> _charData = [
      for (int i = 0; i < lateBebida.length; i++)
        ChartData(
            DateTime(
                lateBebida[i].year, lateBebida[i].month, lateBebida[i].day),
            _sumarBebida(lateBebida[i])),
    ];

    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat.MMMd(),
          visibleMinimum: minDateTime,
          visibleMaximum: _maxDateTime),
      zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
      series: <CartesianSeries<ChartData, DateTime>>[
        LineSeries(
          markerSettings: const MarkerSettings(isVisible: true),
          width: 2.5,
          dataSource: _charData,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        )
      ],
    );
  }

  double _sumarBebida(ConsumoAlimentos consumo) {
    int yearPrueba = consumo.year;
    int monthPrueba = consumo.month;
    int dayPrueba = consumo.day;
    double sumCalorias = 0;
    for (var i = 0; i < lateBebida.length; i++) {
      if (yearPrueba == lateBebida[i].year &&
          monthPrueba == lateBebida[i].month &&
          dayPrueba == lateBebida[i].day) {
        sumCalorias = sumCalorias + lateBebida[i].medida;
      }
    }
    return sumCalorias;
  }
}

//
/* <------------------------------ GRÁFICO_CALORÍAS ------------------------------> */
class SFCaloriesLineChart extends StatefulWidget {
  const SFCaloriesLineChart({Key? key}) : super(key: key);

  @override
  _SFCaloriesLineChartState createState() => _SFCaloriesLineChartState();
}

class _SFCaloriesLineChartState extends State<SFCaloriesLineChart> {
  int largo = 0;
  // Funciones para leer del flutter secure Storage
  final _storage = new FlutterSecureStorage();
  Future<String> readToken() async {
    return await _storage.read(key: 'token') ?? '';
  }

  Future<String> readId() async {
    return await _storage.read(key: 'idusuario') ?? '';
  }
  //-----------------SERVICES - CARGAR CONSUMO ----------------------
  // NOTA: Luego se optimizará para trabajarlo separado

  // GET: LISTAR CONSUMO DE ALIMENTOS
  // https://pruebafirebaserest-default-rtdb.firebaseio.com/alimentos.json

  final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";
  final List<ConsumoAlimentos> listCalorias = [];

  Future<List<ConsumoAlimentos>> cargarConsumo() async {
    String _token = await readToken();
    String _idusuario = await readId();
    final String _baseUrl = "pruebafirebaserest-default-rtdb.firebaseio.com";

    final url = Uri.https(_baseUrl, 'usuarios/$_idusuario/consumo.json',
        {'auth': await _storage.read(key: 'token') ?? ''});

    final response = await http.get(url);
    if (json.decode(response.body) == null) return listCalorias;
    final Map<String, dynamic> alimentosMap = json.decode(response.body);
    //Imprimir Json
    print("REPORT/sf_chart: cargar alimentos");
    alimentosMap.forEach((key, value) {
      final _temp = ConsumoAlimentos.fromMap(value);
      //if (_temp.tipo != "Bebida") {
      _temp.id = key;
      this.listCalorias.add(_temp);
      //}
    });
    return this.listCalorias;
  }

  //USADOS PARA EL LISTADO DE ALIMENTOS
  List<ConsumoAlimentos> dataCalorias = [];
  late List<ConsumoAlimentos> lateCalorias = [];
  // INIT STATE
  @override
  void initState() {
    super.initState();

    cargarConsumo().then((value) {
      setState(() {
        dataCalorias.addAll(value);
        print("REPORTS/sf_charts : chart calorías");
        print(dataCalorias);
        lateCalorias = dataCalorias;
      });
    });
  }

  DateTime minDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maxDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    List<ChartData> charData = [
      for (int i = 0; i < lateCalorias.length; i++)
        ChartData(
            DateTime(lateCalorias[i].year, lateCalorias[i].month,
                lateCalorias[i].day),
            _sumarCalorias(lateCalorias[i])),
    ];
    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat.MMMd(),
          desiredIntervals: 4,
          visibleMinimum: minDateTime,
          visibleMaximum: _maxDateTime),
      zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
      series: <CartesianSeries<ChartData, DateTime>>[
        LineSeries(
          markerSettings: const MarkerSettings(isVisible: true),
          width: 2.5,
          dataSource: charData,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        )
      ],
    );
  }

  double _sumarCalorias(ConsumoAlimentos consumo) {
    int yearPrueba = consumo.year;
    int monthPrueba = consumo.month;
    int dayPrueba = consumo.day;
    double sumCalorias = 0;
    for (var i = 0; i < lateCalorias.length; i++) {
      if (yearPrueba == lateCalorias[i].year &&
          monthPrueba == lateCalorias[i].month &&
          dayPrueba == lateCalorias[i].day) {
        sumCalorias = sumCalorias + lateCalorias[i].calorias;
      }
    }
    return sumCalorias;
  }
}

/* <------------------------------ GRÁFICO_PESO ------------------------------> */
class SFWeightLineChart extends StatefulWidget {
  const SFWeightLineChart({Key? key}) : super(key: key);

  @override
  _SFWeightLineChartState createState() => _SFWeightLineChartState();
}

class _SFWeightLineChartState extends State<SFWeightLineChart> {
  DateTime minDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maxDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  static List<ChartData> charData = [
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 16), 79.5),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 15), 79.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 14), 78.7),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 13), 78.9),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 12), 78.5),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 11), 78.3),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 10), 78.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 9), 77.8),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 8), 77.7),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 7), 77.1),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 6), 77.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 5), 76.4),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 4), 76.1),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 3), 76.4),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 2), 76.1),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 1), 75.7),
    ChartData(DateTime(2021, DateTime.now().month, DateTime.now().day), 75.0),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Color> color = <Color>[];
    color.add(Colors.green.shade100);
    color.add(Colors.green.shade300);
    color.add(Colors.green);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);
    final LinearGradient gradientColors = LinearGradient(
      colors: color,
      stops: stops,
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
    return SfCartesianChart(
      title: ChartTitle(text: 'Línea de tiempo'),
      primaryYAxis: CategoryAxis(isVisible: false),
      primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat(DateFormat.NUM_MONTH_DAY),
          visibleMinimum: minDateTime,
          visibleMaximum: _maxDateTime),
      zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
      series: <CartesianSeries>[
        SplineAreaSeries<ChartData, DateTime>(
            dataSource: charData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            gradient: gradientColors)
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}
