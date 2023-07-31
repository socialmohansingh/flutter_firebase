import 'package:example/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/flutter_firebase.dart';

void main() {
  startApp();
}

Future<void> startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FlutterFirebaseApp.configure();
  runApp(const LoginPage());
}
