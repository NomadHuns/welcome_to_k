import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_to_k/constants/padding.dart';
import 'package:welcome_to_k/pages/detail/components/detail_carousel.dart';
import 'package:welcome_to_k/pages/_common/custom_category_tag.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView(
        children: [
          DetailCarousel(viewportFraction: 1.0),
          SizedBox(height: default_gap),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: default_gap),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomCategoryTag(text: 'Drama'),
                    CustomCategoryTag(text: 'Drama'),
                    CustomCategoryTag(text: 'Drama'),
                  ],
                ),
                SizedBox(height: default_gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('City of Lights', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black)),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(FontAwesomeIcons.heart, color: Colors.redAccent),
                    ),
                  ],
                ),
                SizedBox(height: small_gap),
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.locationDot, color: Colors.blueAccent, size: 15),
                    SizedBox(width: small_gap),
                    Text('Avotu lela 104-B', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: xlarge_gap),
                Text('OVERVIEW', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.grey)),
                SizedBox(height: small_gap),
                Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.blueGrey)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
