import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyRemoteDataSource extends ICurrencyRemoteDataSource {
  final String apiUrl = 'https://api.example.com/currencies'; // Updated URL
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
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => CurrencyDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load currencies');
    }
  }

  @override
  Future<void> deleteCurrency(double currencyId) async {
    final response = await http.delete(Uri.parse('$deleteCartUrl/$currencyId'));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete currency');
    }
  }

  @override
  Future<List<CurrencyDTO>> editCurrency() async {
    // Assuming the endpoint for editing currency requires a POST request
    final response = await http.post(
      Uri.parse(editCurrencyUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'some': 'data'}), // Replace with actual data
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => CurrencyDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to edit currency');
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

  @override
  Future<List<CurrencyDTO>> getSavedCurrencies() async {
    final response = await http.get(Uri.parse(savedCurrenciesUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => CurrencyDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to get saved currencies');
    }
  }

  @override
  Future<List<CurrencyDTO>> saveCurrency() async {
    // Assuming the endpoint for saving currency requires a POST request
    final response = await http.post(
      Uri.parse(saveCurrencyUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'some': 'data'}), // Replace with actual data
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => CurrencyDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to save currency');
    }
  }
}
