import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:perwebsite/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.fontColor.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.fontColor.withOpacity(0.5),
              onPressed: () {
                _launchUrl("https://www.linkedin.com/in/urnere/");
              },
              icon: FaIcon(
                FontAwesomeIcons.linkedinIn,
                color: AppColors.fontColor,
                size: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.fontColor.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: AppColors.fontColor.withOpacity(0.5),
              onPressed: () {
                _launchUrl("https://github.com/urnereDev");
              },
              icon: FaIcon(
                FontAwesomeIcons.githubAlt,
                color: AppColors.fontColor,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
