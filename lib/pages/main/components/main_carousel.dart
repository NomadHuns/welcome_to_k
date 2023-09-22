import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({super.key});

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

  final pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(images[index]), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("개무서운 골목길", style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white)),
                  const SizedBox(height: 30),
                  Text("오징어 게임", style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.mapLocationDot,
                        color: Color(0xFFF0F0F0),
                        size: 24,
                      ),
                      const SizedBox(width: 20),
                      Text('부산광역시 부산진구 서면동', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white)),
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
