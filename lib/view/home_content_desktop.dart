import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/home/home_detail.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [HomeDetail()],
    );
  }
}
