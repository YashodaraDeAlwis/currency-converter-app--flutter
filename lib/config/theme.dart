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
          backgroundColor: AppColors.light,
          foregroundColor: AppColors.dark,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
          headlineMedium: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          headlineSmall: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          bodyMedium: TextStyle(
            color: AppColors.dark,
            fontSize: 12,
          ),
          bodySmall: TextStyle(
            color: AppColors.dark,
            fontSize: 10,
          ),
          labelSmall: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w600,
            fontSize: 8,
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.light,
              );
            }
            return const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            );
          }),
        ),
      );

  static get scrollPhysics =>
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
}
