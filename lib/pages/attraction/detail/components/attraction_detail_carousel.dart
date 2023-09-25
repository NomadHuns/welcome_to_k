import 'package:flutter/material.dart';

class AttractionDetailCarousel extends StatefulWidget {
  double viewportFraction;
  double borderRadius;

  AttractionDetailCarousel({
    super.key,
    required this.viewportFraction,
    this.borderRadius = 0,
  });

  @override
  State<AttractionDetailCarousel> createState() => _AttractionDetailCarouselState();
}

class _AttractionDetailCarouselState extends State<AttractionDetailCarousel> {
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
      height: 250,
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  image: NetworkImage(images[index]), fit: BoxFit.fill),
            ),
          );
        },
      ),
    );
  }
}
