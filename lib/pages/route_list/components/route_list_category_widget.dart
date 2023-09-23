import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/_common/custom_category_tag.dart';

class RouteListCategoryWidget extends StatelessWidget {
  const RouteListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
              CustomCategoryTag(text: '태양의 후예'),
            ],
          ),
        ),
      ),
    );
  }
}
