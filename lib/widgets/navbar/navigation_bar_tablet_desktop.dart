import 'package:flutter/material.dart';
import 'package:perwebsite/widgets/navbar/navbar_item.dart';
import 'package:perwebsite/widgets/navbar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 40),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xff151515),
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(
                title: "Home",
              ),
              SizedBox(
                width: 40,
              ),
              NavBarItem(title: "About")
            ],
          )
        ],
      ),
    );
  }
}
