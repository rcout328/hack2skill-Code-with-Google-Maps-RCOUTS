import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB93d-97LkG6CkJICcuJEsO08d2nNwH0V8",
            authDomain: "kksq-80c60.firebaseapp.com",
            projectId: "kksq-80c60",
            storageBucket: "kksq-80c60.appspot.com",
            messagingSenderId: "517353180410",
            appId: "1:517353180410:web:69311848b4d9d81510cd43"));
  } else {
    await Firebase.initializeApp();
  }
}
