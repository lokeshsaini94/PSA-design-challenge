import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:psa_task/util/flip_card_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CardImageWidget extends StatefulWidget {
  const CardImageWidget({super.key});

  @override
  State<CardImageWidget> createState() => _CardImageWidgetState();
}

class _CardImageWidgetState extends State<CardImageWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool isBig = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isBig) {
            isBig = false;
          } else {
            isBig = true;
          }
        });
      },
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
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
                      height: isBig ? 500 : 250,
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
                      height: isBig ? 500 : 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _controller.isAnimating ? 1.0 : 0.0,
                      child: child,
                    );
                  },
                  child: Lottie.asset(
                    height: 60,
                    width: 60,
                    "assets/animations/tap.json",
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller
                        ..duration = composition.duration
                        ..repeat(period: Duration(seconds: 2), count: 2);
                    },
                    delegates: LottieDelegates(
                      values: [
                        ValueDelegate.color(const ['**'], value: Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
