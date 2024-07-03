import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';

class DownloadCVWidget extends StatelessWidget {
  const DownloadCVWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.fontColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Download CV",
            style: TextStyle(color: AppColors.fontColor, fontFamily: "Poppins"),
          ),
          SizedBox.square(
            dimension: 12,
          ),
          Icon(
            Icons.download,
            color: AppColors.fontColor,
            size: 20,
          )
        ],
      ),
    );
  }
}
