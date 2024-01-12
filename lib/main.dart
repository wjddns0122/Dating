import 'package:dating/binding/init_binding.dart';
import 'package:dating/screen/auth/login_screen.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: InitBinding(),
    );
  }
}
