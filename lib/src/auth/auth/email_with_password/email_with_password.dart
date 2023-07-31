import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/src/helper/flutter_firebase_error.dart';

abstract class AuthEmailWithPassword {
  void register({
    required String email,
    required String password,
    required Function(UserCredential credential) onRegister,
    required Function(FlutterFirebaseError error) onRegisterFailed,
  });

  void login({
    required String email,
    required String password,
    required Function(UserCredential credential) onLogin,
    required Function(FlutterFirebaseError error) onLoginFailed,
  });
}
