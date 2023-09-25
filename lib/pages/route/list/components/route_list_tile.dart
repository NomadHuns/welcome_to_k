import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/_common/custom_list_tile.dart';
import 'package:welcome_to_k/pages/route/detail/route_detail_page.dart';

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
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetailPage()));
        },
        child: CustomListTile(text: text, imageUrl: imageUrl),
      ),
    );
  }
}
