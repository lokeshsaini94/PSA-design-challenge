import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:psa_task/core/constant/util.dart';
import 'package:psa_task/core/theme/colors_psa.dart';

class AuctionPriceWidget extends StatefulWidget {
  const AuctionPriceWidget({super.key});

  @override
  State<AuctionPriceWidget> createState() => _AuctionPriceWidgetState();
}

class _AuctionPriceWidgetState extends State<AuctionPriceWidget> {
  bool is6M = true;

  @override
  Widget build(BuildContext context) {
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
                color: ColorsPSA.textSecondary,
                fontSize: 17,
                fontFamily: 'Area Normal',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          // Line Chart
          AspectRatio(
            aspectRatio: 1.5,
            child: LineChart(
              mainData(is6M, spots1, spots2),
              duration: Duration(milliseconds: 150),
              curve: Curves.linear,
            ),
          ),

          // Time Filter lables
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 2W label
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '2W',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsPSA.textPrimary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                ),

                // 1M label
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '1M',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsPSA.textPrimary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                ),

                // 3M label
                GestureDetector(
                  onTap: () {
                    setState(() {
                      is6M = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration:
                        is6M
                            ? ShapeDecoration(shape: RoundedRectangleBorder())
                            : ShapeDecoration(
                              color: ColorsPSA.surfaceTertiary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                    child: Text(
                      '3M',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsPSA.textPrimary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ),
                ),

                // 6M label
                GestureDetector(
                  onTap: () {
                    setState(() {
                      is6M = true;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration:
                        !is6M
                            ? ShapeDecoration(shape: RoundedRectangleBorder())
                            : ShapeDecoration(
                              color: ColorsPSA.surfaceTertiary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                    child: Text(
                      '6M',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsPSA.textPrimary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ),
                ),

                // 1Y label
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '1Y',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsPSA.textPrimary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                ),

                // ALL label
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'ALL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsPSA.textPrimary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Generates the main data for a line chart.
///
/// This function creates and returns a [LineChartData] object, which is used
/// to configure the appearance and behavior of a line chart. The chart can
/// display two different sets of data points, determined by the [isSpot1]
/// parameter.
///
/// - [isSpot1]: A boolean value that determines which set of data points to
///   display. If true, [spots1] will be used; otherwise, [spots2] will be used.
/// - [spots1]: A list of [FlSpot] objects representing the first set of data
///   points to be displayed on the chart.
/// - [spots2]: A list of [FlSpot] objects representing the second set of data
///   points to be displayed on the chart.
///
/// Returns a [LineChartData] object configured with the specified data points
/// and chart settings.
LineChartData mainData(bool isSpot1, List<FlSpot> spots1, List<FlSpot> spots2) {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return const FlLine(color: ColorsPSA.borderTertiary, strokeWidth: 1);
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
        spots: isSpot1 ? spots1 : spots2,
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

/// A widget that returns a styled text widget based on the given value.
///
/// The text widget is used as a title for a chart axis, with specific titles
/// for certain values:
/// - 1: "MAY"
/// - 3: "JUN"
/// - 5: "JUL"
/// - 7: "AUG"
/// - 9: "SEP"
///
/// If the value does not match any of the specified cases, an empty text widget
/// is returned.
///
/// The text style is defined with bold font weight, font size of 14, and a
/// color from `ColorsPSA.textDisabled`.
///
/// The returned widget is wrapped in a `SideTitleWidget` with the provided
/// `meta` parameter.
///
/// Parameters:
/// - `value` (double): The value used to determine the text to display.
/// - `meta` (TitleMeta): Metadata for the title widget.
///
/// Returns:
/// - `Widget`: A `SideTitleWidget` containing the styled text widget.
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: ColorsPSA.textDisabled,
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

/// A widget that returns a text widget with a specific style based on the given value.
///
/// The text displayed corresponds to the following values:
/// - 0: '0'
/// - 1: '\$50'
/// - 2: '\$100'
/// - 3: '\$150'
///
/// If the value does not match any of the above cases, an empty container is returned.
///
/// The text style is defined with bold font weight, font size of 14, and a disabled text color.
///
/// Parameters:
/// - `value` (double): The value used to determine the text to be displayed.
/// - `meta` (TitleMeta): Metadata for the title (not used in this function).
///
/// Returns:
/// - A `Text` widget with the corresponding text and style, or an empty `Container` if the value does not match any case.
Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: ColorsPSA.textDisabled,
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
