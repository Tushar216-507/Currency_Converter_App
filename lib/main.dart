import 'package:currency_converter/material_Home_Page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return materialHomePage();
  }
}
