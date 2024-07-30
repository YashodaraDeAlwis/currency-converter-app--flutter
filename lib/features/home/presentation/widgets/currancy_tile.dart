import 'package:currecny_converter_app/config/colors.dart';
import 'package:currecny_converter_app/core/widgets/custom_bottom_sheet.dart';
import 'package:currecny_converter_app/features/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrencyTile extends StatefulWidget {
  final Widget amountWidget;
  CurrencyTile({super.key, required this.amountWidget});

  @override
  _CurrencyTileState createState() => _CurrencyTileState();
}

class _CurrencyTileState extends State<CurrencyTile> {
  final HomeController controller = Get.find();
  String _selectedCurrencyCode = 'Currency'; // Default text

  void _showCountryPickerBottomSheet(
      BuildContext context, List<String> countries) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerBottomSheet(
          countries: countries,
          onSelect: (selectedCurrency) {
            setState(() {
              _selectedCurrencyCode = selectedCurrency;
            });
          },
        );
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
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.amountWidget,
            GestureDetector(
              onTap: () => _showCountryPickerBottomSheet(context, countryCodes),
              child: Row(
                children: [
                  Text(
                    _selectedCurrencyCode,
                    style: const TextStyle(
                      color: AppColors.light,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.light,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
