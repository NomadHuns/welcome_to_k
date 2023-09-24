import 'package:flutter/material.dart';
import 'package:welcome_to_k/pages/category_list/components/category_list_tile.dart';
import 'package:welcome_to_k/pages/category_list/components/category_list_title.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CategoryListTitle(text: 'Drama'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
        CategoryListTitle(text: 'Movie'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
        CategoryListTile(text: 'MicroWave', imageUrl: 'https://picsum.photos/id/1/200/300'),
      ],
    );
  }
}
