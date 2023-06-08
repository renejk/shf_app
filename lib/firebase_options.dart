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
    apiKey: 'AIzaSyBl6J0_k22SdTBjlwAnZRR7dDgwEX7ysnM',
    appId: '1:299517177865:web:e53e10f934354d691008d8',
    messagingSenderId: '299517177865',
    projectId: 'shf-app-8d56d',
    authDomain: 'shf-app-8d56d.firebaseapp.com',
    storageBucket: 'shf-app-8d56d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaMNrLi5t85y_mZ_-ujOt-_G0pVhAzltM',
    appId: '1:299517177865:android:4fc639450267ccf01008d8',
    messagingSenderId: '299517177865',
    projectId: 'shf-app-8d56d',
    storageBucket: 'shf-app-8d56d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSjTXZhJCslY3QpEEmiRyZuyguT41uloU',
    appId: '1:299517177865:ios:baacad27d40d66dd1008d8',
    messagingSenderId: '299517177865',
    projectId: 'shf-app-8d56d',
    storageBucket: 'shf-app-8d56d.appspot.com',
    iosClientId: '299517177865-828orl908chfb1tnt0k35eiqcckgtunq.apps.googleusercontent.com',
    iosBundleId: 'com.example.shfApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSjTXZhJCslY3QpEEmiRyZuyguT41uloU',
    appId: '1:299517177865:ios:14c32e501d3d08561008d8',
    messagingSenderId: '299517177865',
    projectId: 'shf-app-8d56d',
    storageBucket: 'shf-app-8d56d.appspot.com',
    iosClientId: '299517177865-tvp1rdndda4fmoc953bmhsktvkelrbc5.apps.googleusercontent.com',
    iosBundleId: 'com.example.shfApp.RunnerTests',
  );
}
