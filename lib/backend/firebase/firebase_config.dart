import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcTTU16qU3Htc5xhnsf7m3hwbIk7VC9do",
            authDomain: "flixdb-mfhl7b.firebaseapp.com",
            projectId: "flixdb-mfhl7b",
            storageBucket: "flixdb-mfhl7b.appspot.com",
            messagingSenderId: "1019399225046",
            appId: "1:1019399225046:web:9f4d78270f049a719c1377"));
  } else {
    await Firebase.initializeApp();
  }
}
