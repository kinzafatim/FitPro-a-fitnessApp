// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC8kVPeQ695pn59wYrlmvG3R9D7BQSVykg',
    appId: '1:456258849196:web:375fa02043f8d286381209',
    messagingSenderId: '456258849196',
    projectId: 'flutterlabs-e2c26',
    authDomain: 'flutterlabs-e2c26.firebaseapp.com',
    storageBucket: 'flutterlabs-e2c26.firebasestorage.app',
    measurementId: 'G-7YVYEWVTX9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0UeFyvMts9aNjJtxAetOqp6ure83Aaso',
    appId: '1:456258849196:android:b61ccddbf01f68e8381209',
    messagingSenderId: '456258849196',
    projectId: 'flutterlabs-e2c26',
    storageBucket: 'flutterlabs-e2c26.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIwDcBzxKoDTTIPePtaEFnhlhAs7TDimw',
    appId: '1:456258849196:ios:732de203adc7eca5381209',
    messagingSenderId: '456258849196',
    projectId: 'flutterlabs-e2c26',
    storageBucket: 'flutterlabs-e2c26.firebasestorage.app',
    iosBundleId: 'com.example.fitnessapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIwDcBzxKoDTTIPePtaEFnhlhAs7TDimw',
    appId: '1:456258849196:ios:732de203adc7eca5381209',
    messagingSenderId: '456258849196',
    projectId: 'flutterlabs-e2c26',
    storageBucket: 'flutterlabs-e2c26.firebasestorage.app',
    iosBundleId: 'com.example.fitnessapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8kVPeQ695pn59wYrlmvG3R9D7BQSVykg',
    appId: '1:456258849196:web:fbc505005837b285381209',
    messagingSenderId: '456258849196',
    projectId: 'flutterlabs-e2c26',
    authDomain: 'flutterlabs-e2c26.firebaseapp.com',
    storageBucket: 'flutterlabs-e2c26.firebasestorage.app',
    measurementId: 'G-E7W0GE5E7G',
  );

}