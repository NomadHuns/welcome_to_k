import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';

class RouteDetailItem extends StatelessWidget {
  int num;
  String imageUrl;

  RouteDetailItem({super.key, required this.num, required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: small_gap),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 30.0,
            // 원하는 너비
            height: 30.0,
            // 원하는 높이
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black26, // 테두리 색상
                width: 2.0, // 테두리 두께
              ),
            ),
            alignment: Alignment.center,
            child: Text('$num'),
          ),
          SizedBox(width: default_gap),
          Container(
            height: 60,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(width: default_gap),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('4:00 ~ 5:00 pm', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('1234 Paper Street, No city', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45)),
            ],
          ),
        ],
      ),
    );
  }
}
