part of '../flutter_ex_kit.dart';

/// A widget that applies a slide-up animation to its child widget.
///
/// This widget animates its child from bottom to top when it appears on the screen.
class BottomAnimation extends StatefulWidget {
  /// The widget to be animated.
  final Widget child;

  /// Creates a [BottomAnimation] widget.
  ///
  /// The [child] parameter must not be null.
  const BottomAnimation({super.key, required this.child});

  @override
  State<BottomAnimation> createState() => _BottomAnimationState();
}

class _BottomAnimationState extends State<BottomAnimation>
    with SingleTickerProviderStateMixin {
  /// Controls the animation's state and progress.
  late AnimationController _controller;

  /// Defines the slide transition's offset, animating from bottom to top.
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController with a duration of 600ms.
    _controller = AnimationController(
      vsync: this, // Provides a TickerProvider for animation synchronization.
      duration: const Duration(milliseconds: 600),
    );

    // Define the slide animation from off-screen (bottom) to its final position.
    _animation = Tween<Offset>(
      begin: const Offset(0, 1), // Start position (off-screen at the bottom)
      end: const Offset(0, 0), // End position (final on-screen position)
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn, // Smooth easing effect.
      ),
    );

    // Start the animation when the widget is initialized.
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the animation controller to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // The SlideTransition widget animates the position of the child widget.
    return SlideTransition(
      position: _animation, // Apply the slide animation.
      child: widget.child, // The animated child widget.
    );
  }

  /// Returns the animation controller for external control or status monitoring.
  AnimationController get controller => _controller;

  /// Returns the animation used for sliding the child widget.
  Animation<Offset> get animation => _animation;
}
