import 'package:flutter/material.dart';

/// A custom page route that provides an animated transition for navigating
/// between pages. The transition uses a scaling animation with a specified
/// duration and curve.
///
/// The [CustomAnimatedRoute] class extends [PageRouteBuilder] and requires
/// an [enterWidget] to be provided, which represents the widget to be displayed
/// when the route is pushed.
///
/// The transition duration is set to 800 milliseconds, and the reverse transition
/// duration is set to 500 milliseconds. The animation uses a [CurvedAnimation]
/// with the [Curves.fastOutSlowIn] curve for both forward and reverse transitions.
///
/// The transition effect is a [ScaleTransition] that scales the widget from a
/// specified alignment.
///
/// Example usage:
/// ```dart
/// Navigator.push(
///   context,
///   CustomAnimatedRoute(
///     enterWidget: YourWidget(),
///   ),
/// );
/// ```
///
/// Parameters:
/// - [enterWidget]: The widget to be displayed when the route is pushed.
class CustomAnimatedRoute extends PageRouteBuilder {
  final Widget enterWidget;

  CustomAnimatedRoute({required this.enterWidget})
    : super(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => enterWidget,
        transitionDuration: Duration(milliseconds: 800),
        reverseTransitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.fastOutSlowIn,
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

/// A custom page route that creates a slide transition from the top of the screen.
///
/// The [SlideTransitionFromTop] class extends [PageRouteBuilder] and provides
/// a slide transition animation where the new page slides in from the top of
/// the screen.
///
/// The [page] parameter is required and specifies the widget to be displayed
/// as the new page.
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

/// A custom page route that creates a slide transition from the right side of the screen.
///
/// The [SlideTransitionFromRight] class extends [PageRouteBuilder] and provides
/// a slide transition animation where the new page slides in from the right side
/// of the screen.
///
/// The [page] parameter is required and specifies the widget to be displayed
/// as the new page.
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

/// A custom page route that creates a slide transition from the bottom of the screen.
///
/// The [SlideTransitionFromBottom] class extends [PageRouteBuilder] and provides
/// a slide transition animation where the new page slides in from the bottom of
/// the screen.
///
/// The [page] parameter is required and specifies the widget to be displayed
/// as the new page.
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
