import 'package:currecny_converter_app/config/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.button.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: AppColors.button.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )),
      ),
    );
  }
}
