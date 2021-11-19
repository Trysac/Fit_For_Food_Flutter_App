import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:syncfusion_flutter_charts/charts.dart';

/* <--------------- Gráfico hidratación ---------------> */
class SFHydratationLineChart extends StatefulWidget {
  const SFHydratationLineChart({Key? key}) : super(key: key);

  @override
  _SFHydratationLineChartState createState() => _SFHydratationLineChartState();
}

class _SFHydratationLineChartState extends State<SFHydratationLineChart> {
  DateTime minDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maxDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  static List<ChartData> charData = [
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 16), 1.5),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 15), 2.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 14), 1.7),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 13), 1.9),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 12), 1.5),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 11), 1.3),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 10), 1.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 9), 1.8),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 8), 1.7),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 7), 2.1),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 6), 2.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 5), 2.4),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 4), 2.1),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 3), 1.8),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 2), 2.0),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 1), 1.8),
    ChartData(DateTime(2021, DateTime.now().month, DateTime.now().day), 2.3),
  ];

  @override
  Widget build(BuildContext context) {
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
          dataSource: charData,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        )
      ],
    );
  }
}

/* <--------------- Gráfico calorías ---------------> */
class SFCaloriesLineChart extends StatefulWidget {
  const SFCaloriesLineChart({Key? key}) : super(key: key);

  @override
  _SFCaloriesLineChartState createState() => _SFCaloriesLineChartState();
}

class _SFCaloriesLineChartState extends State<SFCaloriesLineChart> {
  DateTime minDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maxDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  static List<ChartData> charData = [
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 16), 1725),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 15), 1535),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 14), 1645),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 13), 1539),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 12), 1655),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 11), 1443),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 10), 1550),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 9), 1738),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 8), 1847),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 7), 1841),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 6), 1638),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 5), 1744),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 4), 1551),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 3), 1908),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 2), 1805),
    ChartData(
        DateTime(2021, DateTime.now().month, DateTime.now().day - 1), 2038),
    ChartData(DateTime(2021, DateTime.now().month, DateTime.now().day), 2134),
  ];

  @override
  Widget build(BuildContext context) {
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
}

/* <--------------- Gráfico peso ---------------> */
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
