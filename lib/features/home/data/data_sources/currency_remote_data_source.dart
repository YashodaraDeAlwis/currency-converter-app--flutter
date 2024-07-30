import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyRemoteDataSource extends ICurrencyRemoteDataSource {
  final String apiUrl =
      'https://api.currencyapi.com/v3/latest?apikey=cur_live_2ZdO4Gal4sdLauBSnBQf2lUq82rGZJLUh92TS2GU'; // Updated URL
  final String deleteCartUrl =
      'https://api.example.com/deleteCart'; // Dummy URL
  final String editCurrencyUrl =
      'https://api.example.com/editCurrency'; // Dummy URL
  final String exchangeAmountUrl =
      'https://api.example.com/exchangeAmount'; // Dummy URL
  final String savedCurrenciesUrl =
      'https://api.example.com/savedCurrencies'; // Dummy URL
  final String saveCurrencyUrl =
      'https://api.example.com/saveCurrency'; // Dummy URL

  @override
  Future<List<CurrencyDTO>> getCurrencies() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final currenciesData = data['data'] as Map<String, dynamic>;

      return currenciesData.entries.map((entry) {
        final code = entry.key;
        final currencyData = entry.value;

        return CurrencyDTO(
          id: 0, // or another unique identifier if available
          img: 'assets/usa.png', // Replace with actual image path if needed
          code: code,
          value: currencyData['value']?.toDouble() ?? 0.0,
        );
      }).toList();
    } else {
      throw Exception('Failed to load currencies');
    }
  }

  @override
  Future<List<CurrencyDTO>> getExchangeAmount() async {
    final response = await http.get(Uri.parse(exchangeAmountUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => CurrencyDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to get exchange amounts');
    }
  }
}
