import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_to_k/pages/main/components/main_carousel.dart';
import 'package:welcome_to_k/pages/main/components/main_google_map.dart';
import 'package:welcome_to_k/pages/main/components/main_search_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Welcome2K', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
      // ),
      body: Column(
        children: [
          const Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                MainGoogleMap(),
                MainSearchBar(),
              ],
            ),
          ),
          MainCarousel(
            viewportFraction: 0.8,
            borderRadius: 8.0,
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: [
          NavigationDestination(icon: Icon(FontAwesomeIcons.house, color: Colors.blueAccent), label: 'Home'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.road, color: Colors.blueAccent), label: 'Route'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.film, color: Colors.blueAccent), label: 'Category'),
        ],
      ),
    );
  }
}
