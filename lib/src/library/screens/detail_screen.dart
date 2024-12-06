import 'package:anime_library_app/src/library/widgets/creator_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:anime_library_app/src/public/animations/fade_animation.dart';
import 'package:anime_library_app/src/public/widgets/blur_container_widget.dart';

/// Detail Screen
/// 
/// This screen is responsible for displaying the details of the selected 
/// character. This screen is displayed when the user clicks on a character.
/// 
/// Gonzalo Quedena
class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {super.key,
      required this.color,
      required this.image,
      required this.name});

  final int color;
  final String name;
  final String image;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

/// Detail Screen State
/// 
/// This class is responsible for managing the state of the Detail Screen.
/// 
/// Gonzalo Quedena
class _DetailScreenState extends State<DetailScreen> {
  double heightScreen = 0;

  @override
  Widget build(BuildContext context) {
    heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(widget.color),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: SizedBox(
                    height: heightScreen * .6,
                    child: Hero(
                      tag: widget.color,
                      child: Image.asset("assets/${widget.image}.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: BlurContainerWidget(
                    child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.1),
                      ),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Text(
                "${widget.name} #Character",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: const Text(
                "One Piece",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CreatorInformationWidget(
                    title: "Eiichirō Oda",
                    subtitle: "Author",
                  ),
                  CreatorInformationWidget(
                    title: "Japan",
                    subtitle: "Country",
                  ),
                ],
              ),
            ),
            const Spacer(),
            FadeAnimation(
                intervalStart: 0.5,
                child: GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 15.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(widget.color),
                    ),
                    child: const Text(
                      "Back to Home",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
