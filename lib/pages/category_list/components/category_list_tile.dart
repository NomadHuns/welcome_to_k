import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';

class CategoryListTile extends StatelessWidget {
  String text;
  String imageUrl;

  CategoryListTile({
    super.key,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: default_gap),
      child: Card(
        elevation: 5.0, // 그림자 깊이 설정
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: small_gap),
          title: Text(text,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black)),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
