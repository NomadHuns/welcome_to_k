import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/my_route.dart';
import 'package:welcome_to_k/constants/theme.dart';
import 'package:welcome_to_k/pages/home_holder/home_holder.dart';
import 'package:welcome_to_k/pages/main/main_page.dart';
import 'package:welcome_to_k/pages/route_detail/route_detail_page.dart';

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
