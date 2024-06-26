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
    apiKey: 'AIzaSyAAbgrtm1klxW-G_pUo4kAKgpiuUArXGy0',
    appId: '1:589383501932:web:70d90ebbefedf08fca3049',
    messagingSenderId: '589383501932',
    projectId: 'promax1318',
    authDomain: 'promax1318.firebaseapp.com',
    storageBucket: 'promax1318.appspot.com',
    measurementId: 'G-50Z92SNWKK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9fYrs40uLz65PfU-MtZIBksnLMsqVbgk',
    appId: '1:589383501932:android:e7c4a352085bdd8aca3049',
    messagingSenderId: '589383501932',
    projectId: 'promax1318',
    storageBucket: 'promax1318.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7pCXXksm__0kYCrGno7dz4ufxnfTzeg0',
    appId: '1:589383501932:ios:1118403f38d80b03ca3049',
    messagingSenderId: '589383501932',
    projectId: 'promax1318',
    storageBucket: 'promax1318.appspot.com',
    iosBundleId: 'com.example.project2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7pCXXksm__0kYCrGno7dz4ufxnfTzeg0',
    appId: '1:589383501932:ios:1118403f38d80b03ca3049',
    messagingSenderId: '589383501932',
    projectId: 'promax1318',
    storageBucket: 'promax1318.appspot.com',
    iosBundleId: 'com.example.project2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAAbgrtm1klxW-G_pUo4kAKgpiuUArXGy0',
    appId: '1:589383501932:web:8f1109cc3f2fe13bca3049',
    messagingSenderId: '589383501932',
    projectId: 'promax1318',
    authDomain: 'promax1318.firebaseapp.com',
    storageBucket: 'promax1318.appspot.com',
    measurementId: 'G-QJW5ZBG3QM',
  );
}
