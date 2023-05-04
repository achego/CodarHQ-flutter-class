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
    apiKey: 'AIzaSyCfEme8_GbUtdTE0oMi9v0LcGh1P47aZRw',
    appId: '1:11375506416:web:a55c529fccc869bb692335',
    messagingSenderId: '11375506416',
    projectId: 'todoapp-b2b25',
    authDomain: 'todoapp-b2b25.firebaseapp.com',
    storageBucket: 'todoapp-b2b25.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB88kH0hzeA89HFxb3fMUeDCQue9gm6c4Q',
    appId: '1:11375506416:android:7d6b11d85c058b33692335',
    messagingSenderId: '11375506416',
    projectId: 'todoapp-b2b25',
    storageBucket: 'todoapp-b2b25.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7-LbQ9211TLAwX80sjX_wP_2I9djB7oY',
    appId: '1:11375506416:ios:f7d1b95097bf6b06692335',
    messagingSenderId: '11375506416',
    projectId: 'todoapp-b2b25',
    storageBucket: 'todoapp-b2b25.appspot.com',
    iosClientId: '11375506416-4i2sosskoris16o0vpc93d9kohvio01a.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7-LbQ9211TLAwX80sjX_wP_2I9djB7oY',
    appId: '1:11375506416:ios:f7d1b95097bf6b06692335',
    messagingSenderId: '11375506416',
    projectId: 'todoapp-b2b25',
    storageBucket: 'todoapp-b2b25.appspot.com',
    iosClientId: '11375506416-4i2sosskoris16o0vpc93d9kohvio01a.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );
}
