import 'package:anime_library_app/src/public/screens/home_screen.dart';
import 'package:flutter/material.dart';

/// Main function to run the app
void main() {
  runApp(const MyApp());
}

/// Main app widget
/// 
/// This widget is the root of the application.
/// 
/// Gonzalo Quedena
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Anime Library',
      home: const HomeScreen(),
    );
  }
}
