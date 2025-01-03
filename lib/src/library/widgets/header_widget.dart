import 'package:flutter/material.dart';

/// Header widget for the app
/// 
/// This widget is used to display the header of the app.
/// 
/// Gonzalo Quedena
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  /// Title text style
  /// 
  /// This is the text style for the title of the header.
  final titleTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );
  
  /// Subtitle text style
  /// 
  /// This is the text style for the subtitle of the header.
  final subtitleTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 17,
  );

  /// Build method
  /// 
  /// This method is used to build the widget for the header.
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.all(25),
        height: 170.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 41, 40, 39),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "One piece",
                  style: titleTextStyle,
                ),
                Text(
                  "series",
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(.1),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(.1),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
