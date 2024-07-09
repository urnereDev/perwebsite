import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';

class DevelopmentWidget extends StatelessWidget {
  final String icon;
  final String text;
  final Color? color;

  const DevelopmentWidget(
      {super.key, required this.text, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.003),
      width: 200,
      height: 45,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(color: AppColors.fontColor),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            width: 25,
            height: 25,
            icon,
            color: color, // İsteğe bağlı renk ayarı
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
