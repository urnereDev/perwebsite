import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/home/home_detail.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [HomeDetail()],
    );
  }
}
