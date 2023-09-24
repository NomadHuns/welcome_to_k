import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_to_k/constants/my_route.dart';
import 'package:welcome_to_k/constants/padding.dart';

class MainItem extends StatelessWidget {
  String imageUrl;

  MainItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyRoute.attractionDetailPage);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: default_gap),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.all(small_gap),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: small_gap),
              Text("Fxxking Scary Street",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white)),
              SizedBox(height: xlarge_gap),
              Text("Squid Game",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white)),
              SizedBox(height: xlarge_gap),
              Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    color: Color(0xFFF0F0F0),
                    size: 20,
                  ),
                  SizedBox(width: small_gap),
                  Text('1st street, Jeonpo-dong, Busan',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
