import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color: Color(0xFFE26972), // Coral Pink
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Fit Pro',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Login to your account to continue.',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email, color: Color(0xFF572C57)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Color(0xFF572C57)),
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
                    color: Color(0xFFE26972), // Coral Pink
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Divider(color: Colors.grey[400]),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Add "Sign Up" navigation logic here
                },
                child: Text(
                  'Don’t have an account? Sign Up',
                  style: TextStyle(
                    color: Color(0xFFE26972), // Coral Pink
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

