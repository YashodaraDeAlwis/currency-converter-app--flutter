import 'package:currecny_converter_app/config/colors.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String title;
  const CustomInput({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: AppColors.light, fontSize: 15),
          filled: true,
          fillColor: AppColors.secondary.withOpacity(0.1),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.white20,
            ),
          ),
        ),
        cursorColor: AppColors.light,
        cursorHeight: 20,
        style: TextStyle(color: Colors.white, fontSize: 20),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
