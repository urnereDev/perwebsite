import 'package:flutter/material.dart';
import 'package:perwebsite/constants/styles.dart';
import 'package:perwebsite/screens/widgets/custom_painter.dart';
import 'package:perwebsite/screens/widgets/dark_mod_button.dart';
import 'package:perwebsite/screens/widgets/development_widget.dart';
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DarkModButton(),
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("DEVELOPMENT"),
                        SizedBox(
                          width: 10,
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(),
                          size: Size(size.width * 0.6, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 10,
                          runSpacing: 15,
                          alignment: WrapAlignment.start,
                          runAlignment: WrapAlignment.spaceBetween,
                          children: [
                            DevelopmentWidget(
                              text: "Flutter",
                              icon: "assets/images/flutter-logo.png",
                            ),
                            DevelopmentWidget(
                              text: "JavaScript",
                              icon: "assets/images/javascript-3.png",
                            ),
                            DevelopmentWidget(
                              text: "HTML",
                              icon: "assets/images/html.png",
                            ),
                            DevelopmentWidget(
                              text: "Tailwind CSS",
                              icon: "assets/images/Tailwind CSS.png",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              )
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
