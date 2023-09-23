import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_to_k/constants/padding.dart';

class MainCarousel extends StatefulWidget {
  double viewportFraction;
  double borderRadius;

  MainCarousel({
    super.key,
    required this.viewportFraction,
    this.borderRadius = 0,
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
          return Container(
            margin: EdgeInsets.symmetric(horizontal: default_gap),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(images[index]), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: EdgeInsets.all(widget.borderRadius),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("개무서운 골목길",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white)),
                  SizedBox(height: large_gap),
                  Text("오징어 게임",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  SizedBox(height: xlarge_gap),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.mapLocationDot,
                        color: Color(0xFFF0F0F0),
                        size: 24,
                      ),
                      SizedBox(width: default_gap),
                      Text('부산광역시 부산진구 서면동',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
