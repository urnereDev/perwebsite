import 'package:flutter/material.dart';
import 'package:perwebsite/view/home_content_desktop.dart';
import 'package:perwebsite/view/home_content_mobile.dart';
import 'package:perwebsite/view/center_view.dart';
import 'package:perwebsite/widgets/navbar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303242),
      body: CenterView(
        child: Column(
          children: [
            NavigationBarWidget(),
            Expanded(
              child: ScreenTypeLayout.builder(
                mobile: (BuildContext context) => HomeContentMobile(),
                desktop: (BuildContext context) => HomeContentDesktop(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
