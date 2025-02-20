import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/card_view/grading_confirmation.dart';

class SubmitButtonWidget extends StatefulWidget {
  const SubmitButtonWidget({super.key});

  @override
  State<SubmitButtonWidget> createState() => _SubmitButtonWidgetState();
}

class _SubmitButtonWidgetState extends State<SubmitButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsPSA.surfaceInvert,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
            color: ColorsPSA.textInvert,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
