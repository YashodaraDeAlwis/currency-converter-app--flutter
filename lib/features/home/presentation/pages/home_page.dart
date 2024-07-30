import 'package:currecny_converter_app/config/colors.dart';
import 'package:currecny_converter_app/config/theme.dart';
import 'package:currecny_converter_app/core/widgets/custom_app_bar.dart';
import 'package:currecny_converter_app/core/widgets/custom_bottom_sheet.dart';
import 'package:currecny_converter_app/core/widgets/custom_button.dart';
import 'package:currecny_converter_app/core/widgets/custom_input.dart';
import 'package:currecny_converter_app/core/widgets/title_widget.dart';
import 'package:currecny_converter_app/features/home/presentation/controllers/home_controller.dart';
import 'package:currecny_converter_app/features/home/presentation/widgets/currancy_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.find();
  HomePage({super.key});

  void _showCountryPickerBottomSheet(
      BuildContext context, List<String> countries, Function(String) onSelect) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerBottomSheet(
          countries: countries,
          onSelect: onSelect,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Extract country codes from the CurrencyDTO list
    final List<String> countryCodes =
        controller.currencies.map((currency) => currency.code).toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          flexibleSpace: const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: CustomAppBar(text: "Advanced Exchanger"),
          ),
          backgroundColor: AppColors.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: 'Insert amount :'),
            const SizedBox(height: 10),
            CurrencyTile(
              amountWidget: const CustomInput(
                title: "Enter the amount",
              ),
            ),
            const SizedBox(height: 30),
            const TitleWidget(title: 'Convert to :'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: AppTheme.scrollPhysics,
                children: [
                  CurrencyTile(
                    amountWidget: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1250", // This can be replaced with dynamic amount if needed
                        style: TextStyle(
                          color: AppColors.light,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CurrencyTile(
                    amountWidget: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1250", // This can be replaced with dynamic amount if needed
                        style: TextStyle(
                          color: AppColors.light,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CurrencyTile(
                    amountWidget: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "5500", // This can be replaced with dynamic amount if needed
                        style: TextStyle(
                          color: AppColors.light,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      title: '+ add converter',
                      onTap: () {
                        _showCountryPickerBottomSheet(
                          context,
                          countryCodes,
                          (selectedCurrency) {
                            // Handle the selected currency
                            // This callback will be triggered with the selected currency code
                            // You can update your controller or state here
                            print("Selected Currency: $selectedCurrency");
                            // For example, you might update the state of your CurrencyTile
                          },
                        );
                      },
                    ),
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
