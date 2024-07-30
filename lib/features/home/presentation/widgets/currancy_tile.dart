import 'package:currecny_converter_app/config/colors.dart';
import 'package:currecny_converter_app/core/widgets/custom_input.dart';

import 'package:flutter/material.dart';

class CurrencyTile extends StatelessWidget {
  final Widget amountWidget;
  const CurrencyTile({super.key, required this.amountWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            amountWidget,
            DropdownButton<String>(
              value: "Option 1",
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: AppColors.light,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle change logic here
              },
              dropdownColor: AppColors.secondary,
              underline: Container(), // Remove the underline
            ),
          ],
        ),
      ),
    );
  }
}
