import 'package:flutter/material.dart';

Container submitButton() {
  return Container(
    width: double.infinity,
    height: 72,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF0F0F0F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Text(
        'Submit for Grading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
