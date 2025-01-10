// //firebaselogin
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth import
// import 'package:firebase_core/firebase_core.dart'; // Firebase Core import
// import 'HomeScreen.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF572C57), // Set background color to purple
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(height: 80), // Add some top space
//               Center(
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.fitness_center,
//                       size: 80,
//                       color: Colors.white, // Icon color in white
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Fit Pro',
//                       style: TextStyle(
//                         color: Colors.white, // Fit Pro text in white
//                         fontSize: 40, // You can adjust the size as needed
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40),
//               Text(
//                 'Login to your account to continue.',
//                 style: TextStyle(
//                   color: Colors.white, // Text in white
//                   fontSize: 14, // Reduced font size for this text
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 32),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   labelStyle: TextStyle(color: Colors.white), // Label in white
//                   prefixIcon: Icon(Icons.email, color: Colors.white), // Icon in white
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   labelStyle: TextStyle(color: Colors.white), // Label in white
//                   prefixIcon: Icon(Icons.lock, color: Colors.white), // Icon in white
//                 ),
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () async {
//                   try {
//                     final email = emailController.text.trim();
//                     final password = passwordController.text.trim();

//                     // Firebase Authentication login
//                     UserCredential userCredential = await FirebaseAuth.instance
//                         .signInWithEmailAndPassword(
//                             email: email, password: password);

//                     // Navigate to HomeScreen on successful login
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => HomeScreen()),
//                     );
//                   } catch (e) {
//                     // Show error message
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Login failed: ${e.toString()}')),
//                     );
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFFE26972), // Coral Pink button color
//                 ),
//                 child: Text('Login', style: TextStyle(fontSize: 18)),
//               ),
//               SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//                   // Add "Forgot Password" navigation logic here
//                   // Example: Navigator.push(context, MaterialPageRoute(builder: (_) => ForgotPasswordScreen()));
//                 },
//                 child: Text(
//                   'Forgot Password?',
//                   style: TextStyle(
//                     color: Colors.white, // Text in white
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Divider(color: Colors.grey[400]),
//               SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//                   // Add "Sign Up" navigation logic here
//                   // Example: Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
//                 },
//                 child: Text(
//                   'Don’t have an account? Sign Up',
//                   style: TextStyle(
//                     color: Colors.white, // Text in white
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'HomeScreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   Future<void> login(BuildContext context) async {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields.')),
//       );
//       return;
//     }

//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Login failed: ${e.toString()}')),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF572C57),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(height: 80),
//               Center(
//                 child: Column(
//                   children: [
//                     Icon(Icons.fitness_center, size: 80, color: Colors.white),
//                     SizedBox(height: 16),
//                     Text(
//                       'Fit Pro',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   labelStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.email, color: Colors.white),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   labelStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.lock, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () => login(context),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFFE26972),
//                 ),
//                 child: Text('Login', style: TextStyle(fontSize: 18)),
//               ),
//               SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//                   // Navigate to Sign-Up screen
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => SignUpScreen()),
//                   );
//                 },
//                 child: Text(
//                   'Don’t have an account? Sign Up',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController = TextEditingController();

//   Future<void> signUp(BuildContext context) async {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();
//     final confirmPassword = confirmPasswordController.text.trim();

//     if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please fill in all fields.')),
//       );
//       return;
//     }

//     if (password != confirmPassword) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Passwords do not match.')),
//       );
//       return;
//     }

//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Account created successfully!')),
//       );
//       Navigator.pop(context); // Return to login screen
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Sign up failed: ${e.toString()}')),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF572C57),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(height: 80),
//               Center(
//                 child: Column(
//                   children: [
//                     Icon(Icons.fitness_center, size: 80, color: Colors.white),
//                     SizedBox(height: 16),
//                     Text(
//                       'Fit Pro',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   labelStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.email, color: Colors.white),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   labelStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.lock, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: confirmPasswordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Confirm Password',
//                   labelStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () => signUp(context),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFFE26972),
//                 ),
//                 child: Text('Sign Up', style: TextStyle(fontSize: 18)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
