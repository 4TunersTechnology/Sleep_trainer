import 'package:baby_sleep_scheduler/views/activity/summary_graph/controller.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class SleepData {
  final int day;
  final dynamic time;

  SleepData(this.day, this.time);
}

class StackedAreaLineChart extends StatefulWidget {
  final List<Map<String, dynamic>> logs;

  StackedAreaLineChart(this.logs);

  @override
  State<StatefulWidget> createState() {
    return _StackedAreaLineChartState();
  }
}

class _StackedAreaLineChartState extends State<StackedAreaLineChart> {
  static const Map<String, int> modeColors = {
    'totalTime': 0xFFEDA6A6,
    'cryTime': 0xFFA5D1D1,
    'awakeTime': 0xFF84DB84,
    'other': 0xFFC8A172,
  };

  List<charts.Series<SleepData, String>> _seriesList(String mode) {
    int sessionDays = 6;

    for (var log in widget.logs)
      if (log['day'] > sessionDays) sessionDays = log['day'];

    int time = 0;
    int highestID = -1;

    List<SleepData> data = [];

    int initial = 0;

    if (sessionDays > 7 &&
        MediaQuery.of(context).orientation == Orientation.portrait)
      initial += sessionDays - 7;

    for (var i = initial; i <= sessionDays; i++) {
      bool _activityRecordedOnThisDay = false;
      for (var log in widget.logs) {
        if (log['day'] == i && log['id'] > highestID) {
          if (!_activityRecordedOnThisDay) _activityRecordedOnThisDay = true;
          highestID = log['id'];
          if (mode != 'other')
            time = (log[mode] / 60).floor();
          else {
            time = ((log['cryTime'] ?? 0) / 60).floor() +
                ((log['awakeTime'] ?? 0) / 60).floor();
          }
        }
      }

      data.add(SleepData(
          i + 1, _activityRecordedOnThisDay && time == 0 ? 0.0 : time));

      time = 0;
      highestID = -1;
    }

    final List<charts.Series<SleepData, String>> results = [
      charts.Series<SleepData, String>(
        id: 'none',
        data: data,
        colorFn: (_, __) => charts.Color(
          r: modeColors[mode] >> 16 & 0xFF,
          g: modeColors[mode] >> 8 & 0xFF,
          b: modeColors[mode] & 0xFF,
        ),
        domainFn: (SleepData sales, _) => S.of(context).Day + ' ${sales.day}',
        measureFn: (SleepData sales, _) => sales.time,
      ),
    ];

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: GraphController.stream,
      initialData: 'cryTime',
      builder: (context, mode) => charts.BarChart(
        _seriesList(mode.data),
        animate: false,
        barRendererDecorator: charts.BarLabelDecorator<String>(),
        primaryMeasureAxis: charts.NumericAxisSpec(
          renderSpec: charts.NoneRenderSpec(),
        ),
      ),
    );
  }
}
