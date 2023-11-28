import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.rubik().fontFamily,
        textTheme:const  TextTheme(
          bodyLarge: TextStyle(
             fontSize: 50,
             fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
