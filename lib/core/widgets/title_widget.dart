import 'package:currecny_converter_app/config/colors.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(
        color: AppColors.light,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    );
  }
}
