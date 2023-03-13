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
    apiKey: 'AIzaSyDMkxT9cD_We7WmEG4b_LMQIaSQqazxpQs',
    appId: '1:623535408510:web:7b6de50634d89df020df2f',
    messagingSenderId: '623535408510',
    projectId: 'playground-1bfc4',
    authDomain: 'playground-1bfc4.firebaseapp.com',
    storageBucket: 'playground-1bfc4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEQ6zYp1Nw5DPeFyf_XXZshFpbeYleSPk',
    appId: '1:623535408510:android:3d3fa12f6fc7efe820df2f',
    messagingSenderId: '623535408510',
    projectId: 'playground-1bfc4',
    storageBucket: 'playground-1bfc4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0zXESDL3oc3MoDSifzWfpiMOQcu-u59g',
    appId: '1:623535408510:ios:865937b36d30f47520df2f',
    messagingSenderId: '623535408510',
    projectId: 'playground-1bfc4',
    storageBucket: 'playground-1bfc4.appspot.com',
    iosClientId: '623535408510-nh22pnc6bgl7ld3ql4gc0u6ung71e4s2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0zXESDL3oc3MoDSifzWfpiMOQcu-u59g',
    appId: '1:623535408510:ios:865937b36d30f47520df2f',
    messagingSenderId: '623535408510',
    projectId: 'playground-1bfc4',
    storageBucket: 'playground-1bfc4.appspot.com',
    iosClientId: '623535408510-nh22pnc6bgl7ld3ql4gc0u6ung71e4s2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseChat',
  );
}
