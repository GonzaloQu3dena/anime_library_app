import 'package:anime_library_app/src/library/screens/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockCharacterWidget extends StatelessWidget {
  final String name;
  final int color;
  final String image;

  const BlockCharacterWidget(
      {super.key,
      required this.name,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => DetailScreen(
              color: color,
              image: image,
              name: name,
            ),
          ),
        ),
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(66, 100, 97, 97),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 0),
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.normal,
                        color: Color(color),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Hero(
                    tag: color,
                    child: Image.asset(
                      "assets/$image.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ],
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
