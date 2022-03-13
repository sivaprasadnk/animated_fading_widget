import 'package:flutter/material.dart';

/// Package to Animate FadeIn and FadeOut continuously with a specified duration.
///
/// [child] and [duration] values must not be null.
class AnimatedFadingWidget extends StatefulWidget {
  const AnimatedFadingWidget({
    Key? key,
    required this.child,
    required this.duration,
  }) : super(key: key);

  /// [child] widget to animate. Must not be null.
  final Widget child;

  /// [duration] with which animation is to be done. Must not be null.
  final Duration duration;

  @override
  State<AnimatedFadingWidget> createState() => _AnimatedFadingWidgetState();
}

class _AnimatedFadingWidgetState extends State<AnimatedFadingWidget>
    with TickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animation.forward();
      }
    });
    animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInFadeOut,
      child: widget.child,
    );
  }
}
