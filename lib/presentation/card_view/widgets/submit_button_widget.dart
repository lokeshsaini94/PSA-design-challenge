import 'package:flutter/material.dart';
import 'package:psa_task/presentation/card_view/grading_confirmation.dart';

Container submitButton(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 60,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF0F0F0F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GradingConfirmation()),
        );
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
