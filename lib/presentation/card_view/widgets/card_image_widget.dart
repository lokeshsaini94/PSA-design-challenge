import 'package:flutter/material.dart';
import 'package:psa_task/presentation/card_view/widgets/flip_card_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Container cardImage() {
  return Container(
    child: FlipCardWidget(
      front: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: Shimmer(
          duration: Duration(seconds: 3),
          interval: Duration(seconds: 0),
          child: Image.asset(
            'assets/images/card_front.png',
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
      back: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: Shimmer(
          duration: Duration(seconds: 3),
          interval: Duration(seconds: 0),
          child: Image.asset(
            'assets/images/card_back.png',
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
