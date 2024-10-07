import 'package:flutter/material.dart';
import 'package:slidedelete/sliderdelect.dart';
import 'package:slidedelete/sliderdemo.dart';
import 'package:slidedelete/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SliderDemo(),
     
    );
  }
}

