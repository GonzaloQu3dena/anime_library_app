import 'package:flutter/material.dart';

/// Fade animation
/// 
/// This animation fades in or out a widget.
/// 
/// Gonzalo Quedena
class FadeAnimation extends StatelessWidget {
  const FadeAnimation(
      {super.key,
      required this.child,
      this.begin = 0,
      this.end = 1,
      this.intervalStart = 0,
      this.intervalEnd = 1,
      this.duration = const Duration(milliseconds: 1000),
      this.curve = Curves.fastOutSlowIn});

  final double begin;
  final double end;
  final Duration duration;
  final double intervalStart;
  final double intervalEnd;
  final Curve curve;
  final Widget child;

  /// Build method
  /// 
  /// This method builds the widget with the animation.
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: begin,
        end: end,
      ),
      duration: duration,
      curve: Interval(
        intervalStart,
        intervalEnd,
        curve: curve,
      ),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
          opacity: value!,
          child: child,
        );
      },
    );
  }
}
