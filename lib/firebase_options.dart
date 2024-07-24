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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBz7KNCnx4et0qm1sBWXvkyq7zk3OZBx1g',
    appId: '1:917656368103:web:fcabd5e7691879c4f8c342',
    messagingSenderId: '917656368103',
    projectId: 'ecommerceapp-a7e46',
    authDomain: 'ecommerceapp-a7e46.firebaseapp.com',
    storageBucket: 'ecommerceapp-a7e46.appspot.com',
    measurementId: 'G-994WB5R1VG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsTYe1waps9I_33SaaeNpp68hxbFI8y0U',
    appId: '1:917656368103:android:34c1fa079d43b1a9f8c342',
    messagingSenderId: '917656368103',
    projectId: 'ecommerceapp-a7e46',
    storageBucket: 'ecommerceapp-a7e46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUCVmoXQUJAVlyH3l6n1zzJRjwv9Z_vnE',
    appId: '1:917656368103:ios:74e8681ef71c54ccf8c342',
    messagingSenderId: '917656368103',
    projectId: 'ecommerceapp-a7e46',
    storageBucket: 'ecommerceapp-a7e46.appspot.com',
    androidClientId: '917656368103-gq0c41lp235vegivb2if9bsp4iljc4mp.apps.googleusercontent.com',
    iosClientId: '917656368103-20rf1fb1pd76lg9glr774htjeqo1dleb.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBz7KNCnx4et0qm1sBWXvkyq7zk3OZBx1g',
    appId: '1:917656368103:web:245be26614e6bdacf8c342',
    messagingSenderId: '917656368103',
    projectId: 'ecommerceapp-a7e46',
    authDomain: 'ecommerceapp-a7e46.firebaseapp.com',
    storageBucket: 'ecommerceapp-a7e46.appspot.com',
    measurementId: 'G-SJLD1SPXXH',
  );

}