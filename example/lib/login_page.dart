import 'package:flutter/material.dart';
import 'package:flutter_firebase/flutter_firebase.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            child: const Text("Login"),
            onPressed: () {
              FlutterFirebaseApp.instance.authEmailWithPassword.login(
                email: "mohan@mohan.com",
                password: "Mohan@123",
                onLogin: (credential) {},
                onLoginFailed: (error) {},
              );
            },
          ),
        ),
      ),
    );
  }
}
