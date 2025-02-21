import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class SubmitButtonWidget extends StatefulWidget {
  final VoidCallback onPressed;

  const SubmitButtonWidget({super.key, required this.onPressed});

  @override
  State<SubmitButtonWidget> createState() => _SubmitButtonWidgetState();
}

class _SubmitButtonWidgetState extends State<SubmitButtonWidget> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RoundedLoadingButton(
        height: 60,
        width: MediaQuery.of(context).size.width - 60,
        animateOnTap: true,
        duration: Duration(milliseconds: 500),
        color: ColorsPSA.surfaceInvert,
        successColor: ColorsPSA.surfaceInvert,
        controller: _btnController,
        onPressed: () async {
          await Future.delayed(Duration(milliseconds: 200));
          _btnController.success();
          widget.onPressed();
          await Future.delayed(Duration(milliseconds: 2000));
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        valueColor: ColorsPSA.textInvert,
        borderRadius: 16,
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
