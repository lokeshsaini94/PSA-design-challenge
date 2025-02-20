import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';

Container priceEstimateTitle() {
  return Container(
    padding: const EdgeInsets.all(16),
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Colors.white),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Container(height: 2, color: ColorsPSA.borderTertiary)),
        SizedBox(width: 16),
        Text(
          'PRICE ESTIMATE',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsPSA.textTertiary,
            fontSize: 12,
            fontFamily: 'Area Normal',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 16),
        Expanded(child: Container(height: 2, color: ColorsPSA.borderTertiary)),
      ],
    ),
  );
}
