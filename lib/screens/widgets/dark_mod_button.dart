import 'package:flutter/material.dart';
import 'package:perwebsite/constants/colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Renk sabitleriniz (AppColors) burada olmalı

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.bgBlack,
    secondary: AppColors.bgLight,
    tertiary: AppColors.bgLight,
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.bgLight,
    secondary: AppColors.bgBlack,
    tertiary: AppColors.fontColor,
  ),
);

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  ThemeProvider() {
    _loadTheme();
  }

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveTheme(_themeMode == ThemeMode.dark);
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDarkMode') ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> _saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDark);
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    iconBool =
        themeProvider.themeMode == ThemeMode.dark; // İkonu temaya göre güncelle

    return IconButton(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      icon: Icon(iconBool ? dark : light),
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tema Değiştirme Örneği'),
          actions: const [
            DarkModButton(),
          ],
        ),
        body: Center(
          child: Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) {
              return Text(
                'Tema: ${themeProvider.themeMode == ThemeMode.dark ? 'Karanlık' : 'Aydınlık'}',
                style: TextStyle(
                  color: themeProvider.themeMode == ThemeMode.dark
                      ? Colors.white
                      : Colors.black,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
