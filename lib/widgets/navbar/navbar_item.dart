import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          color: Color(0xffB4A5A5),
          decoration: TextDecoration.none,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w800),
    );
  }
}
