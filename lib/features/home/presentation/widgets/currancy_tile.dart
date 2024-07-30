import 'package:currecny_converter_app/config/colors.dart';
import 'package:currecny_converter_app/core/widgets/custom_bottom_sheet.dart';
import 'package:currecny_converter_app/core/widgets/custom_input.dart';
import 'package:currecny_converter_app/features/home/presentation/controllers/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CurrencyTile extends StatelessWidget {
  final HomeController controller = Get.find();
  final Widget amountWidget;
  CurrencyTile({super.key, required this.amountWidget});
  void _showCountryPickerBottomSheet(
      BuildContext context, List<String> countries) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerBottomSheet(countries: countries);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> countryCodes =
        controller.currencies.map((currency) => currency.code).toList();
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            amountWidget,
            GestureDetector(
              onTap: () => _showCountryPickerBottomSheet(context, countryCodes),
              child: Row(
                children: [
                  Text(
                    "Options",
                    style: const TextStyle(
                      color: AppColors.light,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.light,
                  ),
                ],
              ),
            )
            // DropdownButton<String>(
            //   value: "Option 1",
            //   items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
            //       .map((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(
            //         value,
            //         style: const TextStyle(
            //           color: AppColors.light,
            //           fontWeight: FontWeight.w400,
            //           fontSize: 14,
            //         ),
            //       ),
            //     );
            //   }).toList(),
            //   onChanged: (String? newValue) {
            //     // Handle change logic here
            //   },
            //   dropdownColor: AppColors.secondary,
            //   underline: Container(), // Remove the underline
            // ),
          ],
        ),
      ),
    );
  }
}
