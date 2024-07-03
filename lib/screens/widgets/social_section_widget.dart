import 'package:flutter/material.dart';
import 'package:perwebsite/screens/widgets/download_cv_widget.dart';
import 'package:perwebsite/screens/widgets/social_widget.dart';

class SocialSectionWidget extends StatelessWidget {
  const SocialSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DownloadCVWidget(),
          SizedBox(
            width: 20,
          ),
          Expanded(child: SocialWidget())
        ],
      ),
    );
  }
}
