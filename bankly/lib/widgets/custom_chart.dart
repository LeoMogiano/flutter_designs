
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLinechart extends StatefulWidget {
  const CustomLinechart({
    super.key,
    required this.changeBalOption
  });

  final bool changeBalOption;

  @override
  State<CustomLinechart> createState() => _CustomLinechartState();
}

class _CustomLinechartState extends State<CustomLinechart> {
    List<Color> gradientColorsYellow = [
    const Color.fromARGB(255, 203, 190, 69),
    const Color.fromARGB(255, 202, 166, 83)
  ];
  List<Color> gradientColorsPurple = [
    const Color.fromARGB(255, 206, 147, 216),
    const Color.fromARGB(255, 186, 104, 200)
  ];
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            horizontalInterval: 1,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) {
              return const FlLine(
                color: Colors.grey,
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return const FlLine(
                color: Colors.grey,
                strokeWidth: 1,
              );
            },
          ),
          titlesData: const FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 1,
                getTitlesWidget: bottomTitleWidgets,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: leftTitleWidgets,
                reservedSize: 40
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d)),
          ),
          minX: 0,
          maxX: 23,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 3.1),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
                FlSpot(12.5, 5),
                FlSpot(14.5, 3),
                FlSpot(16.4, 5.6),
                FlSpot(18, 3),
                FlSpot(19, 4),
                FlSpot(20, 3),
                FlSpot(21, 4),
                FlSpot(22, 5),
                FlSpot(23, 3),
    
              ],
    
              isCurved: true,
              gradient: LinearGradient(
                colors: (widget.changeBalOption)
                  ? gradientColorsYellow
                  : gradientColorsPurple
              ),
              barWidth: 2,
    
              isStrokeCapRound: true,
              dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                if (spot == const FlSpot(16.4, 5.6)) {
                  return FlDotCirclePainter(
                    radius: 5,
                    color: Colors.black,
                  );
                } else {
                  return FlDotCirclePainter(
                    radius: 0, // invisible
                  );
                }
              },
            ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.3),
                  ]
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
                ),
              ),
            ),
          ],
        )
    );
  }
}


// FL CHART
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text('Jan', style: style);
      break;
    case 5:
      text = const Text('Feb', style: style);
      break;
    case 8:
      text = const Text('Mar', style: style);
      break;
    case 11:
      text = const Text('Apr', style: style);
      break;
    case 14:
      text = const Text('May', style: style);
      break;
    case 17:
      text = const Text('Jun', style: style);
      break;
    case 20:
      text = const Text('Jul', style: style);
      break;
    case 23:
      text = const Text('Aug', style: style);
      break;
    default:
      return Container();
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }




