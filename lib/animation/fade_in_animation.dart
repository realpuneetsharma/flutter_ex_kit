part of '../flutter_ex_kit.dart';

/// A widget that applies a fade-in and sliding animation to its child widget.
///
/// This widget animates its child widget by fading it in while simultaneously sliding it
/// in from one of four possible directions: top-to-bottom (ttb), bottom-to-top (btt),
/// left-to-right (ltr), or right-to-left (rtl). The animation duration and direction
/// can be customized using the `delay`, `fadeOffset`, and `direction` parameters.
///
/// Example usage:
/// ```dart
/// FadeInAni(
///   delay: 1.5,  // Adjusts the animation duration
///   fadeOffset: 50.0,  // Controls how far the widget slides in
///   direction: FadeInDirection.ltr,  // Animation direction: left-to-right
///   child: YourWidget(),
/// );
/// ```
///
/// Parameters:
/// - [child]: The widget to animate.
/// - [delay]: A multiplier for the duration of the animation, where 1.0 is the normal speed.
/// - [fadeOffset]: The distance the widget moves during the fade-in animation (in logical pixels).
/// - [direction]: Specifies the direction from which the widget slides in. It can be one of the following:
///   - `FadeInDirection.ltr`: Left to right.
///   - `FadeInDirection.rtl`: Right to left.
///   - `FadeInDirection.ttb`: Top to bottom.
///   - `FadeInDirection.btt`: Bottom to top.
class FadeInAni extends StatefulWidget {
  const FadeInAni({
    super.key,
    required this.child,
    required this.delay,
    required this.direction,
    required this.fadeOffset,
  });

  final Widget child;
  final double delay;
  final double fadeOffset;
  final FadeInDirection direction;

  @override
  State<FadeInAni> createState() => _FadeInAniState();
}

class _FadeInAniState extends State<FadeInAni> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<double> inAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller with a duration based on the delay value.
    controller = AnimationController(
      duration: Duration(milliseconds: (500 * widget.delay).round()),
      vsync: this,
    );

    // Define the sliding animation using Tween and animate based on controller.
    inAnimation = Tween<double>(begin: -widget.fadeOffset, end: 0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    // Define the opacity animation, starting from 0 (invisible) and ending at 1 (fully visible).
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    // Start the animation forward as soon as the widget is built.
    controller.forward();

    // Apply the animation transformations: translate and fade.
    return Transform.translate(
      offset: switch (widget.direction) {
        FadeInDirection.ltr => Offset(inAnimation.value, 0),   // Move from left to right
        FadeInDirection.rtl => Offset(-inAnimation.value, 0),  // Move from right to left
        FadeInDirection.ttb => Offset(0, inAnimation.value),   // Move from top to bottom
        FadeInDirection.btt => Offset(0, 0 - inAnimation.value), // Move from bottom to top
      },
      child: Opacity(
        opacity: opacityAnimation.value,  // Apply fade-in effect
        child: widget.child,              // Display the animated widget
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is no longer needed to free up resources.
    controller.dispose();
    super.dispose();
  }
}
