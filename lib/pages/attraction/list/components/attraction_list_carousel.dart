import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/attraction/list/components/attraction_list_item.dart';

class MainCarousel extends StatefulWidget {
  double viewportFraction;

  MainCarousel({
    super.key,
    required this.viewportFraction,
  });

  @override
  State<MainCarousel> createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final images = [
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/id/2/200/300',
    'https://picsum.photos/id/3/200/300',
    'https://picsum.photos/id/4/200/300',
    'https://picsum.photos/id/5/200/300',
  ];

  late PageController pageController = PageController(viewportFraction: widget.viewportFraction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return MainItem(imageUrl: images[index]);
        },
      ),
    );
  }
}
