import 'package:flutter/material.dart';
import 'SplashScreen.dart';
void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primaryColor: Color(0xFF572C57), // Dark Purple
        hintColor: Color(0xFFE26972), // Coral Pink
        scaffoldBackgroundColor: Color(0xFFFFFFFF), // White
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF572C57), // Dark Purple
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF9F5F91), // Lavender
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF6EA98), // Pale Yellow
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          labelStyle: TextStyle(color: Color(0xFF572C57)), // Dark Purple
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Color(0xFFE26972), // Button text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
