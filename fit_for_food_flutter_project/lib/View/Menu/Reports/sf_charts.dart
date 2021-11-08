import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:syncfusion_flutter_charts/charts.dart';

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
      zoomPanBehavior:
          ZoomPanBehavior(enablePanning: true, enableSelectionZooming: true),
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

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}

class SFLineChartCalories extends StatefulWidget {
  const SFLineChartCalories({Key? key}) : super(key: key);

  @override
  _SFLineChartCaloriesState createState() => _SFLineChartCaloriesState();
}

class _SFLineChartCaloriesState extends State<SFLineChartCalories> {
  DateTime minimumDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day - 7);
  final DateTime _maximumDateTime =
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
          visibleMinimum: minimumDateTime,
          visibleMaximum: _maximumDateTime),
      zoomPanBehavior:
          ZoomPanBehavior(enablePanning: true, enableSelectionZooming: true),
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
