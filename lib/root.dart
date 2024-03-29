import 'package:dating/screen/auth/login_screen.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: const FlutterSecureStorage().read(key: "accessToken"),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            // return const LoginScreen();
            return const HomeScreen();
          } else {
            // return const HomeScreen();
            return const LoginScreen();
          }
        });
  }
}
