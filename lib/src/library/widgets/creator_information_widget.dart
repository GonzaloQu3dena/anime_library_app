import 'package:flutter/material.dart';

/// Creator Information Widget
/// 
/// This widget is used to display the creator information in the library screen.
/// 
/// Gonzalo Quedena
class CreatorInformationWidget extends StatelessWidget {
  const CreatorInformationWidget(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  /// Build method
  /// 
  /// This method is used to build the widget for the creator information.
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}
