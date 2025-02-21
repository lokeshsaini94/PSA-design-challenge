import 'dart:async';
import 'package:flutter/material.dart';

/// A widget that animates its child to "show up" with a slide transition.
///
/// The [ShowUp] widget takes a [child] widget and an optional [delay] in milliseconds.
/// The child widget will slide up from below after the specified delay.
///
/// Example usage:
/// ```dart
/// ShowUp(
///   child: Text('Hello, World!'),
///   delay: 500, // Delay in milliseconds
/// );
/// ```
///
/// The [delay] parameter defaults to 0 if not provided.
///
/// The animation duration is fixed at 500 milliseconds with a decelerate curve.

class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;

  ShowUp({required this.child, this.delay = 0});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    final curve = CurvedAnimation(
      curve: Curves.decelerate,
      parent: _controller,
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 0.5),
      end: Offset.zero,
    ).animate(curve);

    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation, child: widget.child);
  }
}
