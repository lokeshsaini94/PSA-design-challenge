import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Container auctionPrice() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.centerLeft,
          child: Text(
            'Auction Price Trend',
            style: TextStyle(
              color: Color(0xFF48494A),
              fontSize: 17,
              fontFamily: 'Area Normal',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),

        AspectRatio(
          aspectRatio: 1.5,
          child: LineChart(
            mainData(),
            duration: Duration(milliseconds: 150),
            curve: Curves.linear,
          ),
        ),

        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '2W',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 13,
                  fontFamily: 'Area Normal',
                  fontWeight: FontWeight.w800,
                  height: 1.54,
                  letterSpacing: 0.13,
                ),
              ),
              Text(
                '1M',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 13,
                  fontFamily: 'Area Normal',
                  fontWeight: FontWeight.w800,
                  height: 1.54,
                  letterSpacing: 0.13,
                ),
              ),
              Text(
                '3M',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 13,
                  fontFamily: 'Area Normal',
                  fontWeight: FontWeight.w800,
                  height: 1.54,
                  letterSpacing: 0.13,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 10.60,
                  right: 10.40,
                  bottom: 12,
                ),
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Text(
                  '6M',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 13,
                    fontFamily: 'Area Normal',
                    fontWeight: FontWeight.w800,
                    height: 1.54,
                    letterSpacing: 0.13,
                  ),
                ),
              ),
              Text(
                '1Y',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 13,
                  fontFamily: 'Area Normal',
                  fontWeight: FontWeight.w800,
                  height: 1.54,
                  letterSpacing: 0.13,
                ),
              ),
              Text(
                'ALL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 13,
                  fontFamily: 'Area Normal',
                  fontWeight: FontWeight.w800,
                  height: 1.54,
                  letterSpacing: 0.13,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return const FlLine(color: Color(0xFFF5F5F5), strokeWidth: 1);
      },
      getDrawingVerticalLine: (value) {
        return const FlLine(color: Colors.transparent, strokeWidth: 1);
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(color: Colors.transparent),
    ),
    minX: 0,
    maxX: 10,
    minY: 0,
    maxY: 4,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0, 1.5),
          FlSpot(2.6, 0.5),
          FlSpot(4.9, 3),
          FlSpot(6.8, 2),
          FlSpot(8, 2.5),
          FlSpot(9, 1.5),
          FlSpot(10, 3.5),
        ],
        isCurved: true,
        color: Colors.black,
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
      ),
    ],
  );
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Color(0xFFBABABA),
  );
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = const Text('MAY', style: style);
      break;
    case 3:
      text = const Text('JUN', style: style);
      break;
    case 5:
      text = const Text('JUL', style: style);
      break;
    case 7:
      text = const Text('AUG', style: style);
      break;
    case 9:
      text = const Text('SEP', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(meta: meta, child: text);
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Color(0xFFBABABA),
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0';
      break;
    case 1:
      text = '\$50';
      break;
    case 2:
      text = '\$100';
      break;
    case 3:
      text = '\$150';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.left);
}
