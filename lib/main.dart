import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingslabtest/view/screen_login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LoginSceen(
    ),
    );
  }
}