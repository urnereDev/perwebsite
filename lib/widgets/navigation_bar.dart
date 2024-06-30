import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

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
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset("assets/logo.png"),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _navBarItem(
                title: "Home",
              ),
              SizedBox(
                width: 40,
              ),
              _navBarItem(title: "About")
            ],
          )
        ],
      ),
    );
  }
}

class _navBarItem extends StatelessWidget {
  final String title;

  const _navBarItem({required this.title});

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
