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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyD9O1J6LyIQrytx__o5QnWOJPvsDBQuPII',
    appId: '1:63470752607:web:0c28e0ded9f281f6c29cea',
    messagingSenderId: '63470752607',
    projectId: 'flutter-9b9c2',
    authDomain: 'flutter-9b9c2.firebaseapp.com',
    databaseURL: 'https://flutter-9b9c2.firebaseio.com',
    storageBucket: 'flutter-9b9c2.appspot.com',
    measurementId: 'G-E50D0P5R3L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_cfU6EwmXTclbvwASJ43stbmTHTnXBjw',
    appId: '1:63470752607:android:1fd6be6e16a35cedc29cea',
    messagingSenderId: '63470752607',
    projectId: 'flutter-9b9c2',
    databaseURL: 'https://flutter-9b9c2.firebaseio.com',
    storageBucket: 'flutter-9b9c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOk11LPvyTr8rjUs4M0-RRh60ByBCAG9k',
    appId: '1:63470752607:ios:c44ac0c028aa9f12c29cea',
    messagingSenderId: '63470752607',
    projectId: 'flutter-9b9c2',
    databaseURL: 'https://flutter-9b9c2.firebaseio.com',
    storageBucket: 'flutter-9b9c2.appspot.com',
    androidClientId: '63470752607-39h80hobcv0g5kjpds6gdn9dktalfp8p.apps.googleusercontent.com',
    iosClientId: '63470752607-b7p5mjv0qj7h56o3q4g4be4uctsh7n2j.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOk11LPvyTr8rjUs4M0-RRh60ByBCAG9k',
    appId: '1:63470752607:ios:c44ac0c028aa9f12c29cea',
    messagingSenderId: '63470752607',
    projectId: 'flutter-9b9c2',
    databaseURL: 'https://flutter-9b9c2.firebaseio.com',
    storageBucket: 'flutter-9b9c2.appspot.com',
    androidClientId: '63470752607-39h80hobcv0g5kjpds6gdn9dktalfp8p.apps.googleusercontent.com',
    iosClientId: '63470752607-b7p5mjv0qj7h56o3q4g4be4uctsh7n2j.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipeApp',
  );
}
