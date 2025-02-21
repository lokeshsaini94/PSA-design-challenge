/// A widget that provides a flip card animation between a front and back container.
///
/// The [FlipCardWidget] is a stateful widget that allows users to flip between
/// two containers (front and back) with a horizontal drag gesture. The flip
/// animation is handled using an [AnimationController] and a [Tween].
///
/// The widget takes two required parameters:
/// - [front]: The container to display on the front side of the card.
/// - [back]: The container to display on the back side of the card.
///
/// Example usage:
/// ```dart
/// FlipCardWidget(
///   front: Container(
///     color: Colors.blue,
///     child: Center(child: Text('Front')),
///   ),
///   back: Container(
///     color: Colors.red,
///     child: Center(child: Text('Back')),
///   ),
/// )
/// ```
///
/// The flip animation can be triggered by dragging horizontally on the widget.
/// The card will flip to the opposite side when the drag velocity exceeds a
/// certain threshold.
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
