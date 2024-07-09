import 'package:flutter/material.dart';
import 'package:perwebsite/screens/widgets/custom_painter.dart';
import 'package:perwebsite/screens/widgets/dark_mod_button.dart';
import 'package:perwebsite/screens/widgets/development_widget.dart';
import 'package:perwebsite/screens/widgets/header_text_widget.dart';
import 'package:perwebsite/screens/widgets/rotating_image_widget.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
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
                        SocialLarge(size: size)
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [RotatingImageWidget()],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DEVELOPMENT"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.6, 2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("APPS"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.6, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DevelopmentWidget(
                          text: "VS Code",
                          icon: "assets/images/vsc.png",
                        ),
                        DevelopmentWidget(
                          text: "Android Studio",
                          icon: "assets/images/android-studio-icon.png",
                        ),
                        DevelopmentWidget(
                          text: "Visual Studio",
                          icon: "assets/images/vs.png",
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SERVICES"),
                    CustomPaint(
                      painter: MyCustomPainter(),
                      size: Size(size.width * 0.6, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DevelopmentWidget(
                          text: "GitHub",
                          icon: "assets/images/github.png",
                        ),
                        DevelopmentWidget(
                          text: "Firebase",
                          icon: "assets/images/firebase.png",
                        ),
                        DevelopmentWidget(
                            text: "Vercel", icon: "assets/images/vercel.png"),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
