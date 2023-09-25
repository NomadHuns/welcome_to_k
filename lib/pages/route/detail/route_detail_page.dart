import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:welcome_to_k/constants/padding.dart';
import 'package:welcome_to_k/pages/route/detail/components/route_detail_google_map.dart';
import 'package:welcome_to_k/pages/route/detail/components/route_detail_item.dart';

class RouteDetailPage extends StatelessWidget {
  const RouteDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          RouteDetailGoogleMap(),
          _buttonArrow(context),
          _scroll(),
        ],
      ),
    ));
  }

  _buttonArrow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(default_gap),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: default_gap),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: small_gap, bottom: slarge_gap),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Text('5 Properties',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                Text('4:00 pm ~ 6:00 pm • 75km',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black38)),
                const Divider(),
                RouteDetailItem(num: 1, imageUrl: 'https://picsum.photos/id/1/200/300'),
                const Divider(),
                RouteDetailItem(num: 2, imageUrl: 'https://picsum.photos/id/1/200/300'),
                const Divider(),
                RouteDetailItem(num: 3, imageUrl: 'https://picsum.photos/id/1/200/300'),
                const Divider(),
                RouteDetailItem(num: 4, imageUrl: 'https://picsum.photos/id/1/200/300'),
              ],
            ),
          ),
        );
      },
    );
  }
}
