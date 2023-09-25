import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/my_route.dart';
import 'package:welcome_to_k/constants/theme.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: navigatorKey,
      routes: getRouter(),
      initialRoute: MyRoute.homePage,
      theme: theme,
    );
  }
}
