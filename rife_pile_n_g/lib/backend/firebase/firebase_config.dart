import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCe7pd78uB9BnWBFU2OISpz07r_aNH8n0c",
            authDomain: "rifepile.firebaseapp.com",
            projectId: "rifepile",
            storageBucket: "rifepile.appspot.com",
            messagingSenderId: "571310826605",
            appId: "1:571310826605:web:cfcbe901d6818d94da0b64",
            measurementId: "G-CCX815KEPB"));
  } else {
    await Firebase.initializeApp();
  }
}
