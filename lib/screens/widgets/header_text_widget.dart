import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';
import 'package:perwebsite/screens/widgets/download_cv_widget.dart';
import 'package:perwebsite/screens/widgets/social_widget.dart';
import 'package:perwebsite/screens/widgets/text_widget.dart';
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
        crossAxisAlignment: size.width > 600
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          TextWidget(
            sSize: size,
            alignment: TextAlign.center,
            size: 26,
            color: Theme.of(context).colorScheme.secondary,
            fw: FontWeight.bold,
            text: "I am Barış",
          ),
          GradientText(
            "Flutter & \nFrontend Developer",
            colors: [
              Theme.of(context).colorScheme.secondary,
              AppColors.fontColor
            ],
            style: TextStyle(
                fontSize: size.width * 0.040,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins"),
          ),
          SizedBox(
              width: size.width * 0.5,
              child: TextWidget(
                sSize: size,
                alignment: TextAlign.center,
                size: 16,
                color: AppColors.fontColor,
                fw: FontWeight.normal,
                text:
                    "I develop cross platform applications using responsive structures.",
              )),
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
      width: size.width * 0.5,
      child: const Row(
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
