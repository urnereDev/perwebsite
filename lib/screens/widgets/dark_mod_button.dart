import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';
import 'package:provider/provider.dart';

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.bgBlack,
      secondary: AppColors.bgLight,
      tertiary: AppColors.bgLight,
    ));

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        primary: AppColors.bgLight,
        secondary: AppColors.bgBlack,
        tertiary: AppColors.fontColor));

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class DarkModButton extends StatefulWidget {
  const DarkModButton({super.key});

  @override
  State<DarkModButton> createState() => _DarkModButtonState();
}

class _DarkModButtonState extends State<DarkModButton> {
  bool iconBool = false;
  IconData light = Icons.sunny;
  IconData dark = Icons.nightlight_round;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          setState(() {
            iconBool = !iconBool;
          });
        },
        icon: Icon(iconBool ? dark : light));
  }
}
