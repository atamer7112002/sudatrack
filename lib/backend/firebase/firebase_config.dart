import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCB_x8WXVyHcRLDVCwwPp9rbSsUvYpOGnA",
            authDomain: "sudatrack-mvp.firebaseapp.com",
            projectId: "sudatrack-mvp",
            storageBucket: "sudatrack-mvp.firebasestorage.app",
            messagingSenderId: "319071291781",
            appId: "1:319071291781:web:8179575ea856bad5ae9cec",
            measurementId: "G-PZPJBR73PP"));
  } else {
    await Firebase.initializeApp();
  }
}
