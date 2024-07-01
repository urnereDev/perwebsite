import 'package:flutter/material.dart';

class HomePP extends StatelessWidget {
  const HomePP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 400,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            "assets/profile.jpg",
          ),
        ),
      ),
    );
  }
}
