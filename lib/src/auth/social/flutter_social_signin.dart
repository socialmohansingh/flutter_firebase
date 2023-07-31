import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/src/auth/social/apple/flutter_apple_signin.dart';
import 'package:flutter_firebase/src/auth/social/facebook/flutter_facebook_signin.dart';
import 'package:flutter_firebase/src/auth/social/google/flutter_google_signin.dart';

class FlutterSocialSignin {
  final FlutterGoogleSignin google;
  final FlutterFacebookSignin facebook;
  final FlutterAppleSignin apple;

  FlutterSocialSignin({
    required this.google,
    required this.facebook,
    required this.apple,
  });

  Future<UserCredential> signInWithSocial(AuthCredential credential) async {
    return FirebaseAuth.instance.signInWithCredential(credential);
  }
}
