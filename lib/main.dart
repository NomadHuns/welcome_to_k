import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/theme.dart';
import 'package:welcome_to_k/pages/main/main_page.dart';

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
      home: const MainPage(),
      theme: theme,
    );
  }
}
