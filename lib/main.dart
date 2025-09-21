import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_widget/screens/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Hidden Widgets',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
