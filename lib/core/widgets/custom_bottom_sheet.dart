import 'package:currecny_converter_app/config/colors.dart';
import 'package:flutter/material.dart';

class CountryPickerBottomSheet extends StatefulWidget {
  @override
  _CountryPickerBottomSheetState createState() =>
      _CountryPickerBottomSheetState();
}

class _CountryPickerBottomSheetState extends State<CountryPickerBottomSheet> {
  final List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Australia',
    'India',
  ];

  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    List<String> filteredCountries = countries
        .where((country) =>
            country.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();

    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      child: Container(
        color: AppColors.dark80,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search countries',
                hintStyle: const TextStyle(
                  color: AppColors.light,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: AppColors.white50,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: AppColors.white50,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.light,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchTerm = value;
                });
              },
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCountries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      filteredCountries[index],
                      style: const TextStyle(
                        color: AppColors.light,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      // Handle country selection
                      Navigator.pop(context, filteredCountries[index]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
