import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';

class DetailTag extends StatelessWidget {
  const DetailTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFCCD7EC),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(small_gap),
        child: Text('Drama', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.blue)),
      ),
    );
  }
}
