import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_1/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(canvasColor: Color(0xff181818)),
    );
  }
}
