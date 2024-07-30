import 'package:currecny_converter_app/config/colors.dart';
import 'package:currecny_converter_app/config/theme.dart';
import 'package:currecny_converter_app/core/widgets/custom_app_bar.dart';
import 'package:currecny_converter_app/core/widgets/custom_bottom_sheet.dart';
import 'package:currecny_converter_app/core/widgets/custom_button.dart';
import 'package:currecny_converter_app/core/widgets/custom_input.dart';
import 'package:currecny_converter_app/core/widgets/title_widget.dart';
import 'package:currecny_converter_app/features/home/presentation/widgets/currancy_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showCountryPickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          flexibleSpace: const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: CustomAppBar(text: "Advanced Exchange"),
          ),
          backgroundColor: AppColors.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: 'Insert amount:'),
            const SizedBox(height: 10),
            const CurrencyTile(
              amountWidget: CustomInput(
                title: "Enter the amount",
              ),
            ),
            const SizedBox(height: 30),
            const TitleWidget(title: 'Convert to:'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: AppTheme.scrollPhysics,
                children: [
                  CurrencyTile(
                    amountWidget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1250",
                        style: const TextStyle(
                          color: AppColors.light,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CurrencyTile(
                    amountWidget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1250",
                        style: const TextStyle(
                          color: AppColors.light,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CurrencyTile(
                    amountWidget: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "5500",
                        style: const TextStyle(
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
                      onTap: () => _showCountryPickerBottomSheet(context),
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
