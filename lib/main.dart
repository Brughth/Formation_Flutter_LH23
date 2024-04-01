import 'package:demo/pages/counter_screen.dart';
import 'package:demo/pages/facebook_home_screen.dart';
import 'package:flutter/material.dart';

import 'pages/bmi_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),
        useMaterial3: true,
      ),
      home: const BmiCalculatorScreen(),
    );
  }
}
