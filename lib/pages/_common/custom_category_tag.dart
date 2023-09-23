import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';

class CustomCategoryTag extends StatelessWidget {
  String text;

  CustomCategoryTag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFCCD7EC),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(small_gap),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Colors.blue)),
      ),
    );
  }
}
