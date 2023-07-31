import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase/src/auth/auth/email_link/email_link.dart';
import 'package:flutter_firebase/src/auth/auth/email_link/email_link_impl.dart';
import 'package:flutter_firebase/src/auth/auth/email_with_password/email_with_password.dart';
import 'package:flutter_firebase/src/auth/auth/email_with_password/email_with_password_impl.dart';
import 'package:flutter_firebase/src/auth/auth/phone_number/phone_number.dart';
import 'package:flutter_firebase/src/auth/auth/phone_number/phone_number_impl.dart';
import 'package:flutter_firebase/src/auth/firebase_user.dart';
import 'package:flutter_firebase/src/auth/social/apple/flutter_apple_signin.dart';
import 'package:flutter_firebase/src/auth/social/facebook/flutter_facebook_signin.dart';
import 'package:flutter_firebase/src/auth/social/flutter_social_signin.dart';
import 'package:flutter_firebase/src/auth/social/google/flutter_google_signin.dart';

class FlutterFirebaseApp {
  static final FlutterFirebaseApp instance = FlutterFirebaseApp(
    authEmailWithPassword: AuthEmailWithPasswordImpl(),
    authEmailLink: AuthEmailLinkImpl(),
    authPhoneNumber: AuthPhoneNumberImpl(),
    firebaseUser: FlutterFirebaseUser(),
    socialSignin: FlutterSocialSignin(
      google: FlutterGoogleSignin(),
      facebook: FlutterFacebookSignin(),
      apple: FlutterAppleSignin(),
    ),
  );

  final AuthEmailWithPassword authEmailWithPassword;
  final AuthEmailLink authEmailLink;
  final AuthPhoneNumber authPhoneNumber;
  final FlutterFirebaseUser firebaseUser;
  final FlutterSocialSignin socialSignin;

  FlutterFirebaseApp({
    required this.authEmailWithPassword,
    required this.authEmailLink,
    required this.authPhoneNumber,
    required this.firebaseUser,
    required this.socialSignin,
  });

  static Future<void> configure(FirebaseOptions option) async {
    await Firebase.initializeApp(
      options: option,
    );
  }
}
