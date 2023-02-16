// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCmTyn2bzREhXF11y9bkXmBCGAkzwMzo4I',
    appId: '1:461359120357:web:4caf2e0cd0608f5252390c',
    messagingSenderId: '461359120357',
    projectId: 'stack-rev',
    authDomain: 'stack-rev.firebaseapp.com',
    storageBucket: 'stack-rev.appspot.com',
    measurementId: 'G-GV6NZPJXT0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChlMab_T2vTG2-_5iOxH4I7DZI5Ay16sk',
    appId: '1:461359120357:android:87d46f89c6b9978952390c',
    messagingSenderId: '461359120357',
    projectId: 'stack-rev',
    storageBucket: 'stack-rev.appspot.com',
  );
}
