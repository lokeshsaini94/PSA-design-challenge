import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';

class PriceEstimateWidget extends StatefulWidget {
  const PriceEstimateWidget({super.key});

  @override
  State<PriceEstimateWidget> createState() => _PriceEstimateWidgetState();
}

class _PriceEstimateWidgetState extends State<PriceEstimateWidget> {
  List<String> grades = [
    'UNGRADED',
    'PSA 10',
    'PSA 9',
    'PSA 8',
    'PSA 7',
    'PSA 6',
  ];

  List<String> price = [
    '\$3,565.90',
    '\$319,999',
    '\$17,500',
    '\$7,592.69',
    '\$6,500.00',
    '\$5,650.00',
  ];

  List<String> subHead = [
    'Current value',
    'Pop 124',
    'Pop 718',
    'Pop 648',
    'Pop 516',
    'Pop 705',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(grades.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    grades[index],
                    style: TextStyle(
                      color: ColorsPSA.textTertiary,
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price[index],
                    style: TextStyle(
                      color: ColorsPSA.textSecondary,
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subHead[index],
                    style: TextStyle(
                      color: ColorsPSA.textTertiary,
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Divider(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
