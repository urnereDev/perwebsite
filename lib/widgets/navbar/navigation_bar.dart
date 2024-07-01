import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/navbar/navigation_bar_mobile.dart';
import 'package:perwebsite/widgets/navbar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) => NavigationBarTabletDesktop(),
      mobile: (BuildContext context) => NavigationBarMobile(),
    );
  }
}
