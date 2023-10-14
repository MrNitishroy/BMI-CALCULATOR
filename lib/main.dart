import 'package:bmi_cal/Config/Theme.dart';
import 'package:bmi_cal/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}
