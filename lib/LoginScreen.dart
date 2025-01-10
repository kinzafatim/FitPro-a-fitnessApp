import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF572C57), // Set background color to purple
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80), // Add some top space
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.fitness_center,
                      size: 80,
                      color: Colors.white, // Icon color in white
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Fit Pro',
                      style: TextStyle(
                        color: Colors.white, // Fit Pro text in white
                        fontSize: 40, // You can adjust the size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Removed 'Welcome Back!' text
              Text(
                'Login to your account to continue.',
                style: TextStyle(
                  color: Colors.white, // Text in white
                  fontSize: 14, // Reduced font size for this text
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white), // Label in white
                  prefixIcon: Icon(Icons.email, color: Colors.white), // Icon in white
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white), // Label in white
                  prefixIcon: Icon(Icons.lock, color: Colors.white), // Icon in white
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE26972), // Coral Pink button color
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Add "Forgot Password" navigation logic here
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white, // Text in white
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Divider(color: Colors.grey[400]),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Don’t have an account? Sign Up',
                  style: TextStyle(
                    color: Colors.white, // Text in white
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF572C57), // Set background color to purple
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80), // Add some top space
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.fitness_center,
                      size: 80,
                      color: Colors.white, // Icon color in white
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Fit Pro',
                      style: TextStyle(
                        color: Colors.white, // Fit Pro text in white
                        fontSize: 40, // Adjust size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Create a new account.',
                style: TextStyle(
                  color: Colors.white, // Text in white
                  fontSize: 14, // Reduced font size for this text
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle sign up logic here (e.g., API call)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE26972), // Coral Pink button color
                ),
                child: Text('Sign Up', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Already have an account? Go back to Sign In',
                  style: TextStyle(
                    color: Colors.white, // Text in white
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}