import 'dart:ui';
import 'package:flutter/material.dart';

/// Blur Container Widget
///
/// This widget is used to create a blur effect on the container.
/// 
/// Gonzalo Quedena
class BlurContainerWidget extends StatelessWidget {
  const BlurContainerWidget({super.key, required this.child});

  final Widget child;

  /// Build method
  ///
  /// This method is used to build the widget for the blur container.
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 12.0,
          sigmaY: 12.0,
        ),
        child: child,
      ),
    );
  }
}
