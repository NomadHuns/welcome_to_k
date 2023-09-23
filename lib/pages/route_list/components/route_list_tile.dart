import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/_common/custom_list_tile.dart';

class RouteListTile extends StatelessWidget {
  String text;
  String imageUrl;

  RouteListTile({
    super.key,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomListTile(text: text, imageUrl: imageUrl),
    );
  }
}
