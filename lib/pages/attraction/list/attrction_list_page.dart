import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/attraction/list/components/attraction_list_carousel.dart';
import 'package:welcome_to_k/pages/attraction/list/components/attraction_list_google_map.dart';
import 'package:welcome_to_k/pages/attraction/list/components/attraction_list_search_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ),
      ],
    );
  }
}
