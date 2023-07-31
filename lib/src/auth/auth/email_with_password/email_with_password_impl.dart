import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/src/auth/auth/auth_error.dart';
import 'package:flutter_firebase/src/auth/auth/email_with_password/email_with_password.dart';
import 'package:flutter_firebase/src/helper/flutter_firebase_error.dart';

class AuthEmailWithPasswordImpl extends AuthEmailWithPassword {
  @override
  void register({
    required String email,
    required String password,
    required Function(UserCredential) onRegister,
    required Function(FlutterFirebaseError) onRegisterFailed,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      onRegister(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        onRegisterFailed(
            WeakPassword(code: e.code, message: e.message ?? "", object: e));
      } else if (e.code == 'email-already-in-use') {
        onRegisterFailed(EmailAlreadyUsed(
            code: e.code, message: e.message ?? "", object: e));
      } else {
        onRegisterFailed(
            DefaultError(code: e.code, message: e.message ?? "", object: e));
      }
    } catch (e) {
      onRegisterFailed(
          DefaultError(code: "unknown", message: e.toString(), object: e));
    }
  }

  @override
  void login({
    required String email,
    required String password,
    required Function(UserCredential) onLogin,
    required Function(FlutterFirebaseError) onLoginFailed,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      onLogin(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        onLoginFailed(
            UserNotFound(code: e.code, message: e.message ?? "", object: e));
      } else if (e.code == 'wrong-password') {
        onLoginFailed(
            WrongPassword(code: e.code, message: e.message ?? "", object: e));
      } else {
        onLoginFailed(
            DefaultError(code: e.code, message: e.message ?? "", object: e));
      }
    } catch (e) {
      onLoginFailed(
          DefaultError(code: "unknown", message: e.toString(), object: e));
    }
  }
}
