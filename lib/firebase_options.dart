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
    apiKey: 'AIzaSyAa4QVIvAg9ef6lSf8fhb3z4SWEB5eOES8',
    appId: '1:643539984684:web:1a26cc3b883700e416cc89',
    messagingSenderId: '643539984684',
    projectId: 'medicalapp-37a88',
    authDomain: 'medicalapp-37a88.firebaseapp.com',
    storageBucket: 'medicalapp-37a88.firebasestorage.app',
    measurementId: 'G-NZYXGMTD9W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqJYiR0jkJPbtmy4OGwK8c9CTZrsBF4OQ',
    appId: '1:643539984684:android:9d172797540f912116cc89',
    messagingSenderId: '643539984684',
    projectId: 'medicalapp-37a88',
    storageBucket: 'medicalapp-37a88.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsKKJnGHymQUx4i4tomJjyHZFjIVAdf_U',
    appId: '1:643539984684:ios:1a24a2ecbfbe621616cc89',
    messagingSenderId: '643539984684',
    projectId: 'medicalapp-37a88',
    storageBucket: 'medicalapp-37a88.firebasestorage.app',
    iosBundleId: 'com.example.medicalapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsKKJnGHymQUx4i4tomJjyHZFjIVAdf_U',
    appId: '1:643539984684:ios:1a24a2ecbfbe621616cc89',
    messagingSenderId: '643539984684',
    projectId: 'medicalapp-37a88',
    storageBucket: 'medicalapp-37a88.firebasestorage.app',
    iosBundleId: 'com.example.medicalapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAa4QVIvAg9ef6lSf8fhb3z4SWEB5eOES8',
    appId: '1:643539984684:web:13c8264ed84a30bc16cc89',
    messagingSenderId: '643539984684',
    projectId: 'medicalapp-37a88',
    authDomain: 'medicalapp-37a88.firebaseapp.com',
    storageBucket: 'medicalapp-37a88.firebasestorage.app',
    measurementId: 'G-H4PPB39X5W',
  );
}
