import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';
import 'package:welcome_to_k/pages/route_list/components/route_list_category_widget.dart';
import 'package:welcome_to_k/pages/route_list/components/route_list_tile.dart';

class RouteListPage extends StatelessWidget {
  const RouteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDEF),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: CustomScrollView(
        slivers: [
          RouteListCategoryWidget(),
          SliverToBoxAdapter(
            child: SizedBox(height: small_gap),
          ),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
          RouteListTile(text: '알알이의 드라마 여행', imageUrl: 'https://picsum.photos/id/1/200/300'),
        ],
      ),
    );
  }
}
