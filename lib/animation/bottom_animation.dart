import 'package:flutter/material.dart';


// A StatefulWidget that allows for a slide-up animation for its child widget.
class BottomAnimation extends StatefulWidget {
  final Widget child;  // The child widget to animate

  // Constructor that requires a child widget.
  const BottomAnimation({super.key, required this.child});

  @override
  State<BottomAnimation> createState() => _BottomAnimationState();
}

class _BottomAnimationState extends State<BottomAnimation>
    with SingleTickerProviderStateMixin {
  // The AnimationController controls the animation's state and progress.
  late AnimationController _controller;

  // The animation defines the slide transition's offset, starting from bottom to top.
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController with a 600ms duration.
    _controller = AnimationController(
      vsync: this,  // The TickerProvider that drives the animation
      duration: const Duration(milliseconds: 600), // Duration of the animation
    );

    // Define the slide animation, starting from off-screen at the bottom (Offset(0, 1))
    // and ending at its final position (Offset(0, 0)).
    _animation = Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,  // Smooth easing effect for the animation
    ));

    // Start the animation once the widget is built.
    _controller.forward();
  }

  @override
  void dispose() {
    // Ensure the animation controller is disposed to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The SlideTransition widget animates the position of the child widget based on _animation.
    return SlideTransition(
      position: _animation,  // Apply the slide animation to the position
      child: widget.child,   // The child widget is passed from the parent widget
    );
  }
}
