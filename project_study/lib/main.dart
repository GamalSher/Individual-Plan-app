import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xFFEF6D68, {
        50: Color(0xFFFFE3E0),
        100: Color(0xFFFFB3A9),
        200: Color(0xFFFF817D),
        300: Color(0xFFFF504E),
        400: Color(0xFFFF2C2C),
        500: Color(0xFFEF6D68), // Здесь используется цвет #ef6d68
        600: Color(0xFFEF5E5A),
        700: Color(0xFFEF534F),
        800: Color(0xFFEF4B47),
        900: Color(0xFFEF3A35),
      })),
    );
  }
}
