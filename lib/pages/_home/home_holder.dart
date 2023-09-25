import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_to_k/pages/attraction/list/attrction_list_page.dart';
import 'package:welcome_to_k/pages/category/list/category_list_page.dart';
import 'package:welcome_to_k/pages/route/list/route_list_page.dart';

class HomeHolder extends StatefulWidget {
  const HomeHolder({super.key});

  @override
  State<HomeHolder> createState() => _HomeHolderState();
}

class _HomeHolderState extends State<HomeHolder> {
  int _currentIndex = 1;

  final List<Widget> _children = [
    RouteListPage(),
    MainPage(),
    CategoryListPage(), // 실제로 원하는 페이지 위젯들
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.road, color: Colors.blueAccent),
            label: 'Route',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house, color: Colors.blueAccent),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.film, color: Colors.blueAccent),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}