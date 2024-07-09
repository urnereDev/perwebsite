import 'package:flutter/material.dart';
import 'package:perwebsite/constants/styles.dart';
import 'package:perwebsite/screens/widgets/custom_painter.dart';
import 'package:perwebsite/screens/widgets/dark_mod_button.dart';
import 'package:perwebsite/screens/widgets/development_widget.dart';
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.0001),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("DEVELOPMENT"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.4, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DevelopmentWidget(
                          text: "Flutter",
                          icon: "assets/images/flutter-logo.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "JavaScript",
                          icon: "assets/images/javascript-3.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "HTML",
                          icon: "assets/images/html.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "Tailwind CSS",
                          icon: "assets/images/Tailwind CSS.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.0001),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("APPS"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.4, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DevelopmentWidget(
                          text: "VS Code",
                          icon: "assets/images/vsc.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "Android Studio",
                          icon: "assets/images/android-studio-icon.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "Visual Studio",
                          icon: "assets/images/vs.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.0001),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("SERVICES"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.4, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DevelopmentWidget(
                          text: "GitHub",
                          icon: "assets/images/github.png",
                        ),
                        SizedBox(height: 10),
                        DevelopmentWidget(
                          text: "Firebase",
                          icon: "assets/images/firebase.png",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DevelopmentWidget(
                            text: "Vercel", icon: "assets/images/vercel.png"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
