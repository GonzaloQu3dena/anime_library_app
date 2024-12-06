import 'dart:ui';
import 'package:flutter/material.dart';

class BlurContainerWidget extends StatelessWidget {
  const BlurContainerWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 12.0,
            sigmaY: 12.0,
          ),
          child: child),
    );
  }
}
