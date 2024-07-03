import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';
import 'package:perwebsite/screens/widgets/download_cv_widget.dart';
import 'package:perwebsite/screens/widgets/social_section_widget.dart';
import 'package:perwebsite/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;

  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I am Barış",
            style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
          GradientText(
            "Flutter & \nFrontend Developer",
            colors: [Colors.white12, AppColors.fontColor],
            style: TextStyle(
                fontSize: size.width * 0.040,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
          SizedBox(
            height: size.width * 0.05,
            child: Text(
              "I develop cross platform applications using responsive structures.",
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  const SocialLarge({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      width: size.width * 0.5,
      child: Row(
        children: [
          DownloadCVWidget(),
          SizedBox(
            width: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
