import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart'; // Import firebase_core
import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await Firebase.initializeApp();
//   } catch (e) {
//     print("Firebase initialization error: $e");
//   }
//   runApp(FitnessApp());
// // }
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform, // Ensure this is properly set
//     );
//   } catch (e) {
//     print("Firebase initialization error: $e");
//   }
//   runApp(FitnessApp());
// }
void main(){
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
          fillColor: Color.fromARGB(0, 246, 234, 152),
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
