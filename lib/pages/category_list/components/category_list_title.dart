import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';

class CategoryListTitle extends StatelessWidget {
  String text;

  CategoryListTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: default_gap, vertical: default_gap),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Colors.black)),
    );
  }
}
