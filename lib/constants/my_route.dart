import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/detail/detail_page.dart';
import 'package:welcome_to_k/pages/home_holder/home_holder.dart';

class MyRoute {

  static String homePage = "/";
  static String attractionDetailPage = "/attraction/detail";

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.homePage: (context) => const HomeHolder(),
    MyRoute.attractionDetailPage: (context) => const DetailPage(),
  };

}