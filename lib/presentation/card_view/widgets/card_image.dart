import 'package:flutter/material.dart';

Container cardImage() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Image.asset(
      'assets/images/card_front.png',
      height: 300,
      fit: BoxFit.cover,
    ),
  );
}
