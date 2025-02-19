import 'package:flutter/material.dart';

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
        Expanded(child: Container(height: 2, color: Color(0xFFF5F5F5))),
        SizedBox(width: 16),
        Text(
          'PRICE ESTIMATE',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF6C6E6F),
            fontSize: 12,
            fontFamily: 'Area Normal',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 16),
        Expanded(child: Container(height: 2, color: Color(0xFFF5F5F5))),
      ],
    ),
  );
}
