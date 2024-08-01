import 'package:c11_exam_sun_online/audio_screen/audio_screen.dart';
import 'package:c11_exam_sun_online/moody_screen/moody_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : AudioScreen(),
      //home : MoodyScreen(),
    );
  }
}
