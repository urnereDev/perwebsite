

import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NavigationBarWidget()
      ],
    );
  }
}

