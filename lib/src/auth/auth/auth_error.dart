import 'package:flutter_firebase/src/helper/flutter_firebase_error.dart';

class WeakPassword extends FlutterFirebaseError {
  WeakPassword({
    required super.code,
    required super.message,
    super.object,
  });
}

class EmailAlreadyUsed extends FlutterFirebaseError {
  EmailAlreadyUsed({
    required super.code,
    required super.message,
    super.object,
  });
}

class WrongPassword extends FlutterFirebaseError {
  WrongPassword({
    required super.code,
    required super.message,
    super.object,
  });
}

class UserNotFound extends FlutterFirebaseError {
  UserNotFound({
    required super.code,
    required super.message,
    super.object,
  });
}

class DefaultError extends FlutterFirebaseError {
  DefaultError({
    required super.code,
    required super.message,
    super.object,
  });
}
