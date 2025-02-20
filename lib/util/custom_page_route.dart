import 'package:flutter/material.dart';

class CustomAnimatedRoute extends PageRouteBuilder {
  final Widget enterWidget;

  CustomAnimatedRoute({required this.enterWidget})
    : super(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => enterWidget,
        transitionDuration: Duration(milliseconds: 1500),
        reverseTransitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.fastLinearToSlowEaseIn,
            reverseCurve: Curves.fastOutSlowIn,
          );
          return ScaleTransition(
            alignment: Alignment(0.0, 0.87),
            scale: animation,
            child: child,
          );
        },
      );
}

class SlideTransitionFromTop extends PageRouteBuilder {
  final Widget page;

  SlideTransitionFromTop({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) => SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0.0, -1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
      );
}

class SlideTransitionFromRight extends PageRouteBuilder {
  final Widget page;

  SlideTransitionFromRight({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) => SlideTransition(
              position: Tween<Offset>(
                begin: Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
      );
}

class SlideTransitionFromBottom extends PageRouteBuilder {
  final Widget page;

  SlideTransitionFromBottom({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) => SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
      );
}
