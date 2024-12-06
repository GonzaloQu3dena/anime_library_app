import 'package:anime_library_app/src/library/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: [
          HeaderWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 95, 25, 208),
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
