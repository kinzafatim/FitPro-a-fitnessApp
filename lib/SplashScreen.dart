
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    // Navigate to LoginScreen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF572C57), // Dark Purple
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Scaling Fitness Icon
            ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1.0).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.easeOutBack,
              )),
              child: Icon(
                Icons.fitness_center,
                size: 100,
                color: Color(0xFFF6EA98), // Pale Yellow
              ),
            ),
            SizedBox(height: 16),
            // Animated Text
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: Duration(seconds: 2),
              curve: Curves.easeIn,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Text(
                    'Fit Pro',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF6EA98), // Pale Yellow
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 50),
            // Animated Gym Widgets Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Dumbbell Icon
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: 1 + (_controller.value * 0.5),
                      child: Icon(
                        Icons.sports_gymnastics,
                        size: 40,
                        color: Color(0xFFE26972), // Coral Pink
                      ),
                    );
                  },
                ),
                SizedBox(width: 20),
                // Heart Icon
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * 3.14159,
                      child: Icon(
                        Icons.favorite,
                        size: 40,
                        color: Color(0xFF9F5F91), // Lavender
                      ),
                    );
                  },
                ),
                SizedBox(width: 20),
                // Yoga Icon
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, -10 * _controller.value),
                      child: Icon(
                        Icons.self_improvement,
                        size: 40,
                        color: Color(0xFFF6EA98), // Pale Yellow
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
