import 'package:flutter/material.dart';
import 'package:psa_task/presentation/home.dart';

class GradingConfirmation extends StatefulWidget {
  const GradingConfirmation({super.key});

  @override
  State<GradingConfirmation> createState() => _GradingConfirmationState();
}

class _GradingConfirmationState extends State<GradingConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/card_back.png',
                height: 400,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 4),
                ),
                child: Center(
                  child: Icon(Icons.check, color: Colors.green, size: 32),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Submitted for Grading',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Area Normal',
                    fontWeight: FontWeight.w800,
                    height: 1.33,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Check your email for more information.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6C6E6F),
                    fontSize: 14,
                    fontFamily: 'Area Normal',
                    fontWeight: FontWeight.normal,
                    height: 1.60,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0F0F0F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                      (route) => false,
                    );
                  },

                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
