import 'package:flutter/material.dart';
import 'package:perwebsite/constants/styles.dart';
import 'package:perwebsite/screens/widgets/dark_mod_button.dart';
import 'package:perwebsite/screens/widgets/download_cv_widget.dart';
import 'package:perwebsite/screens/widgets/header_text_widget.dart';
import 'package:perwebsite/screens/widgets/rotating_image_widget.dart';
import 'package:perwebsite/screens/widgets/social_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DarkModButton(),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [RotatingImageWidget()],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeaderTextWidget(
                    size: size,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SocialMobile(size: size)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: const Column(
        children: [
          DownloadCVWidget(),
          SizedBox(
            height: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
