import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_flutter/screens/welcom/welcom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const WelcomScreen(),
    );
  }
}
