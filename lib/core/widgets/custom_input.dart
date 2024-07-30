import 'package:currecny_converter_app/config/colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String title;
  const CustomInput({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: AppColors.light, fontSize: 15),
          filled: true,
          fillColor: AppColors.secondary.withOpacity(0.1),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0, // Adjusted padding for better alignment
            horizontal: 10.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.white20,
              width: 1.0, // Ensure there's a border for consistency
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.white20,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
        cursorColor: AppColors.light,
        cursorHeight: 25, // Adjusted cursor height for better visibility
        style: const TextStyle(
            color: Colors.white,
            fontSize: 20), // Adjusted font size for readability
        keyboardType: TextInputType.number,
      ),
    );
  }
}
