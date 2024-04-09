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
    apiKey: 'AIzaSyCP8i6c8lydDSL34N6vNW2WP-hUdfXwPWk',
    appId: '1:1008586458361:web:a70b8007759496b22e4e28',
    messagingSenderId: '1008586458361',
    projectId: 'insta-clone-3d11c',
    authDomain: 'insta-clone-3d11c.firebaseapp.com',
    storageBucket: 'insta-clone-3d11c.appspot.com',
    measurementId: 'G-LHF1N7YKSM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvbiYtxzfCHiHRzeGjja27qhoWq66NM2Q',
    appId: '1:1008586458361:android:5c13b27bfb49775a2e4e28',
    messagingSenderId: '1008586458361',
    projectId: 'insta-clone-3d11c',
    storageBucket: 'insta-clone-3d11c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDS1hZ0zUG1R4swdeS3nCPXU9EhcwB8qKI',
    appId: '1:1008586458361:ios:8aa0e2c78f673af62e4e28',
    messagingSenderId: '1008586458361',
    projectId: 'insta-clone-3d11c',
    storageBucket: 'insta-clone-3d11c.appspot.com',
    iosClientId: '1008586458361-9ht01udnb1n88ived3eia50j4bffidok.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone001',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDS1hZ0zUG1R4swdeS3nCPXU9EhcwB8qKI',
    appId: '1:1008586458361:ios:b878007601541f8e2e4e28',
    messagingSenderId: '1008586458361',
    projectId: 'insta-clone-3d11c',
    storageBucket: 'insta-clone-3d11c.appspot.com',
    iosClientId: '1008586458361-rbn321onbg40rsaro2cdovs3a38hma0g.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone001.RunnerTests',
  );
}