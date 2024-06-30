import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/center_view.dart';
import 'package:perwebsite/widgets/home_detail.dart';
import 'package:perwebsite/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303242),
      body: CenterView(
        child: const Column(
          children: [
            NavigationBarWidget(),
            Expanded(
                child: Row(
              children: [HomeDetail()],
            ))
          ],
        ),
      ),
    );
  }
}
