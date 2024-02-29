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
    apiKey: 'AIzaSyBlZGXJRoFF6IJuYhJXbnnscDLsbg731Gg',
    appId: '1:709289864052:web:e80d695616a2b8631f5a21',
    messagingSenderId: '709289864052',
    projectId: 'whatsapp-f0a4a',
    authDomain: 'whatsapp-f0a4a.firebaseapp.com',
    storageBucket: 'whatsapp-f0a4a.appspot.com',
    measurementId: 'G-49FG066E2B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBl0qimssTLaahbJFv2DNUq41-cAmqUX_8',
    appId: '1:709289864052:android:1cabc474e463047c1f5a21',
    messagingSenderId: '709289864052',
    projectId: 'whatsapp-f0a4a',
    storageBucket: 'whatsapp-f0a4a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNMJQCNTzseWoKoV2VL0afboEcvqALinw',
    appId: '1:709289864052:ios:48ce3d68517b577f1f5a21',
    messagingSenderId: '709289864052',
    projectId: 'whatsapp-f0a4a',
    storageBucket: 'whatsapp-f0a4a.appspot.com',
    iosBundleId: 'com.example.whatsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNMJQCNTzseWoKoV2VL0afboEcvqALinw',
    appId: '1:709289864052:ios:48128234f15952d71f5a21',
    messagingSenderId: '709289864052',
    projectId: 'whatsapp-f0a4a',
    storageBucket: 'whatsapp-f0a4a.appspot.com',
    iosBundleId: 'com.example.whatsapp.RunnerTests',
  );
}
