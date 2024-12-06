import 'package:flutter/material.dart';

/// Block Cover Widget
/// 
/// This widget is used to display a block cover with an image, 
/// title and subtitle. This widget is used in the library screen.
/// 
/// Gonzalo Quedena
class BlockCoverWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double widthScreen;
  
  const BlockCoverWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.widthScreen});

  /// Build method
  /// 
  /// This method is used to build the widget.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthScreen * .31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
