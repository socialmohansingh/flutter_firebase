import 'package:firebase_auth/firebase_auth.dart';

class FlutterFirebaseUser {
  User? get user {
    return FirebaseAuth.instance.currentUser;
  }

  bool logout() {
    FirebaseAuth.instance.signOut();
    return true;
  }
}
