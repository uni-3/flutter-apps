import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeFactory.prepareThemeDate(),
      home: const MyHomePage(),
    );
  }
}

// color
class AppColors {
  static const Color primary = Colors.white;
  static const Color background = Colors.white;

  static const Color textPrimary = Color(0xFF263238);

  // dark
  static const Color darkPrimary = Colors.white24;
}

// theme
class AppThemeFactory {
  static ThemeData prepareThemeDate() => ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
          fontSize: 72,
          color: AppColors.textPrimary,
        )),
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.background,
        fontFamily: "Roboto",
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      );
}
