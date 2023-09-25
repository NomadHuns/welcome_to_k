import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/_home/home_holder.dart';

class MyRoute {

  static String homePage = "/";

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.homePage: (context) => const HomeHolder(),
  };

}