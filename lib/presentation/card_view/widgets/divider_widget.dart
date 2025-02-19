import 'package:flutter/material.dart';

Container divider() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey.withOpacity(0.2),
    ),
  );
}
