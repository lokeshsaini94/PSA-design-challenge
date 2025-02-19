import 'dart:math';

import 'package:flutter/material.dart';

class FlipCardWidget extends StatefulWidget {
  final Container front;
  final Container back;

  const FlipCardWidget({super.key, required this.front, required this.back});

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget>
    with SingleTickerProviderStateMixin {
  double dragPosition = 0;
  bool isFront = true;
  bool isFrontState = true;
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    controller.addListener(() {
      setState(() {
        dragPosition = animation.value;
        setImageSide();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final angle = dragPosition / 180 * pi;

    final transform =
        Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(angle);

    return GestureDetector(
      onHorizontalDragStart: (details) {
        controller.stop();
        isFrontState = isFront;
      },
      onHorizontalDragUpdate:
          (details) => setState(() {
            dragPosition -= details.delta.dx;
            dragPosition %= 360;
            setImageSide();
          }),
      onHorizontalDragEnd: (details) {
        final velocity = details.velocity.pixelsPerSecond.dx.abs();

        if (velocity >= 100) {
          isFront = !isFrontState;
        }

        final double end = isFront ? (dragPosition > 180 ? 360 : 0) : 180;
        animation = Tween<double>(
          begin: dragPosition,
          end: end,
        ).animate(controller);
        controller.forward(from: 0);
      },
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child:
            isFront
                ? widget.front
                : Transform(
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: widget.back,
                ),
      ),
    );
  }

  void setImageSide() {
    if (dragPosition <= 90 || dragPosition >= 270) {
      isFront = true;
    } else {
      isFront = false;
    }
  }
}
