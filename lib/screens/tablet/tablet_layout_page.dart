import 'package:flutter/material.dart';
import 'package:perwebsite/constants/styles.dart';
import 'package:perwebsite/screens/widgets/download_cv_widget.dart';
import 'package:perwebsite/screens/widgets/header_text_widget.dart';
import 'package:perwebsite/screens/widgets/rotating_image_widget.dart';
import 'package:perwebsite/screens/widgets/social_widget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientBoxDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(
                          size: size,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SocialTablet(size: size)
                      ],
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [RotatingImageWidget()],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialTablet extends StatelessWidget {
  const SocialTablet({super.key, required this.size});

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
