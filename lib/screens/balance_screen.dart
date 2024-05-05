import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => BalanceScreenState();
}

class BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          title: SizedBox(
            width: phoneWidth * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cloud_sync,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            BalanceWidget(phoneWidth: phoneWidth),
            SizedBox(height: phoneHeight * 0.1),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total sent',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.4,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              letterSpacing: -0.4,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SavingsExpenses(
                      phoneWidth: phoneWidth, 
                      phoneHeight: phoneHeight,
                      
                
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}

class SavingsExpenses extends StatefulWidget {
  const SavingsExpenses({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight, 
  });

  final double phoneWidth;
  final double phoneHeight;
  

  @override
  State<SavingsExpenses> createState() => _SavingsExpensesState();
}

class _SavingsExpensesState extends State<SavingsExpenses> {
  bool changeBalOption = false;
  List<Color> gradientColors = [
    Colors.cyan,
    Colors.blue
  ];
  bool showAvg = false;
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() => changeBalOption = !changeBalOption);
              },
              child: Container(
                width: widget.phoneWidth * 0.495,
                height: widget.phoneHeight * 0.055,
                decoration: BoxDecoration(
                  color: const Color(0xFFE3FB0F),
                  borderRadius: (changeBalOption)
                    ? const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    )
                    : const BorderRadius.all(Radius.circular(5)
                
                  ),
                ),
                child: const Center(
                    child: Text("Savings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)))
                ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => changeBalOption = !changeBalOption);
              },
              child: Container(
                  width: widget.phoneWidth * 0.495,
                  height: widget.phoneHeight * 0.055,
                  decoration: BoxDecoration(
                    color: const Color(0XFFC9C3F5),
                    borderRadius:(changeBalOption)
                      ? const BorderRadius.all(Radius.circular(5))
                      : const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                  )),
                  child: const Center(
                      child: Text("Expenses",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)))),
            ),
          ],
        ),
        Align(
          alignment: (changeBalOption)
            ? Alignment.centerLeft
            : Alignment.centerRight,
          child: Container(
            width: widget.phoneWidth * 0.495,
            height: widget.phoneHeight * 0.005,
            decoration: BoxDecoration(
              color: (changeBalOption)
                ? const Color(0xFFE3FB0F)
                : const Color(0XFFC9C3F5),
              borderRadius: const BorderRadius.only(),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: (changeBalOption)
              ? const Color(0xFFE3FB0F)
              : const Color(0XFFC9C3F5),  
          ),
          height: widget.phoneHeight * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 2.20,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        left: 12,
                        top: 20,
                        bottom: 12,
                      ),
                      child: CustomLineChart(
                        parent: BalanceScreenState(),
                      ),
                    ),
                  ),
                
                ],
              )
  
            ],
          ),
        ),
      ],
    );
  }
}

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({
    super.key,
    required this.parent,
  });

  //widget instance
  final BalanceScreenState parent;

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
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
                FlSpot(16.4, 4),
                FlSpot(18, 3),
                FlSpot(19, 4),
                FlSpot(20, 3),
                FlSpot(21, 4),
                FlSpot(22, 5),
                FlSpot(23, 3),
              ],
              isCurved: true,
              gradient: const LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black,
                ]
              ),
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(
                show: false,
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

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required this.phoneWidth,
  });

  final double phoneWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Balance',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.4,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          width: phoneWidth * 0.55,
          child: const Stack(
            children: [
              Text(
                '\$ 23,54.00',
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2,
                    color: Colors.black),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Icon(Icons.arrow_circle_up_sharp, size: 24),
              ),
            ],
          ),
        )
      ],
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



