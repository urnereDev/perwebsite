import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';

import 'dart:math' as math;

class RotatingImageWidget extends StatefulWidget {
  const RotatingImageWidget({super.key});

  @override
  State<RotatingImageWidget> createState() => _RotatingImageWidgetState();
}

class _RotatingImageWidgetState extends State<RotatingImageWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovered = true;
      }),
      onExit: (event) => setState(() {
        isHovered = false;
      }),
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        transform: Matrix4.rotationZ(isHovered ? 0 : math.pi / 36),
        height: size.width * 0.24,
        width: size.width * 0.24,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/profile.jpg")),
            border: Border.all(color: AppColors.fontColor, width: 1.2),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
