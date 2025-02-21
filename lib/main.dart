import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PSA app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsPSA.primary),
        useMaterial3: true,
        fontFamily: 'Area Normal',
      ),
      home: const Home(),
    );
  }
}
