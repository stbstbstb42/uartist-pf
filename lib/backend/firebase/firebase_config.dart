import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZEdmZeUHXwUzdzU12ia0NO0plhqzc1F8",
            authDomain: "uartist-d9ce4.firebaseapp.com",
            projectId: "uartist-d9ce4",
            storageBucket: "uartist-d9ce4.appspot.com",
            messagingSenderId: "429065711825",
            appId: "1:429065711825:web:e3ae6687927a9caff1d5f0",
            measurementId: "G-59P4T1EREX"));
  } else {
    await Firebase.initializeApp();
  }
}
