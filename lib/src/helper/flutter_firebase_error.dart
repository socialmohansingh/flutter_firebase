abstract class FlutterFirebaseError {
  String code;
  String message;
  Object? object;

  FlutterFirebaseError({
    required this.code,
    required this.message,
    this.object,
  });
}
