import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          accentColor: AppColors.light,
          backgroundColor: AppColors.dark,
          brightness: Brightness.light,
        ),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: AppColors.dark,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.light),
          surfaceTintColor: AppColors.light,
          elevation: 0,
          backgroundColor: AppColors.light,
          titleTextStyle: TextStyle(
            color: AppColors.light,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Poppins",
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.dark,
          foregroundColor: AppColors.light,
        ),
      );

  static get scrollPhysics =>
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
}
