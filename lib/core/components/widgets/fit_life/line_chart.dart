import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class LineChartOneLine extends StatefulWidget {
  const LineChartOneLine({
    Key? key,
    required this.listData,
    required this.callBack,
    required this.lineColor,
  }) : super(key: key);
  final List<FlSpot> listData;
  final Function(FlTouchEvent, LineTouchResponse?) callBack;
  final Color lineColor;

  @override
  State<LineChartOneLine> createState() => _LineChartOneLineState();
}

class _LineChartOneLineState extends State<LineChartOneLine> {
  @override
  Widget build(BuildContext context) {
    return LineChart(sampleData1);
  }

  TextStyle get _bottomStyle => context.titleSmall;

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 1,
        maxX: 7,
        maxY: 6,
        minY: 1,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: const LineTouchTooltipData(
          tooltipBgColor: Colors.black,
        ),
        touchCallback: widget.callBack,
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];

  List<LineChartBarData> get lineBarsData2 => [];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = _bottomStyle.copyWith(color: Colors.grey, fontSize: 12.0);
    String text;
    switch (value.toInt()) {
      case 1:
        text = ' 0%';
        break;
      case 2:
        text = ' 20%';
        break;
      case 3:
        text = ' 40%';
        break;
      case 4:
        text = ' 60%';
        break;
      case 5:
        text = ' 80%';
        break;
      case 6:
        text = ' 100%';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = Text('Mon', style: _bottomStyle);
        break;
      case 3:
        text = Text('Tue', style: _bottomStyle);
        break;
      case 4:
        text = Text('Wed', style: _bottomStyle);
        break;
      case 5:
        text = Text('Thu', style: _bottomStyle);
        break;
      case 6:
        text = Text('Fri', style: _bottomStyle);
        break;
      case 7:
        text = Text('Sat', style: _bottomStyle);
        break;
      case 1:
        text = Text('Sun', style: _bottomStyle);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: Theme.of(context).dividerColor,
          strokeWidth: 0.6,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: Theme.of(context).dividerColor,
          strokeWidth: 0,
        );
      });

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).hintColor,
            width: 1,
          ),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: widget.lineColor,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: const FlDotData(
          show: true,
        ),
        belowBarData: BarAreaData(show: false),
        spots: widget.listData,
      );
}
