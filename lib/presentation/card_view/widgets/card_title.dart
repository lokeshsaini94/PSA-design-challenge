import 'package:flutter/material.dart';

Container cardTitle() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Charizard - Holo #4',
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
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: double.infinity,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    '1999 Pokemon Game 1st Edition',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 15,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.bold,
                      height: 1.60,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
