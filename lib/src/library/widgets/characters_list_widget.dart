import 'package:anime_library_app/src/library/widgets/block_character_widget.dart';
import 'package:anime_library_app/src/library/widgets/block_cover_widget.dart';
import 'package:flutter/material.dart';


/// Characters List Widget
/// 
/// Widget that contains the list of characters and covers.
/// 
/// Gonzalo Quedena
class CharactersListWidget extends StatefulWidget {
  const CharactersListWidget({super.key});

  @override
  State<CharactersListWidget> createState() => _CharactersListWidgetState();
}


/// Characters List Widget State
/// 
/// State of the Characters List Widget that contains the list of characters 
/// and covers. This state contains the list of characters and covers.
/// 
/// Gonzalo Quedena
class _CharactersListWidgetState extends State<CharactersListWidget> {
  double widthScreen = 0;

  /// Title Style Text
  /// 
  /// Style of the title text.
  final titleStyleText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  /// Build Method
  /// 
  /// Method that builds the widget for the Characters List Widget.
  @override
  Widget build(BuildContext context) {
    widthScreen = MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Covers",
            style: titleStyleText,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BlockCoverWidget(
                image: "p1.jpg",
                title: "titulo",
                subtitle: "2018",
                widthScreen: widthScreen,
              ),
              SizedBox(
                width: widthScreen * .03,
              ),
              BlockCoverWidget(
                image: "p2.jpg",
                title: "titulo",
                subtitle: "2022",
                widthScreen: widthScreen,
              ),
              SizedBox(
                width: widthScreen * .03,
              ),
              BlockCoverWidget(
                image: "p3.jpg",
                title: "titulo",
                subtitle: "2023",
                widthScreen: widthScreen,
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 20,
          ),
          const BlockCharacterWidget(
            name: "Brook",
            color: 0xff4913C4,
            image: "o1",
          ),
          const BlockCharacterWidget(
            name: "Luffy",
            color: 0xffF82A2D,
            image: "o2",
          ),
          const BlockCharacterWidget(
            name: "Portgas D. Ace",
            color: 0xffFFCB28,
            image: "o3",
          ),
          const BlockCharacterWidget(
            name: "Boa Hancock",
            color: 0xffFE4649,
            image: "o4",
          ),
          const BlockCharacterWidget(
            name: "name",
            color: 0xffDF1C6A,
            image: "o5",
          ),
          const BlockCharacterWidget(
            name: "name",
            color: 0xff21E295,
            image: "o6",
          ),
        ],
      ),
    );
  }
}
