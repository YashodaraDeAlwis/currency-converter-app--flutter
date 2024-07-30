import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyRemoteDataSource extends ICurrencyRemoteDataSource {
  final String apiUrl = 'cur_live_2ZdO4Gal4sdLauBSnBQf2lUq82rGZJLUh92TS2GU';
  final String deleteCartUrl = 'https://api.example.com/deleteCart'; //dummy url

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
  Future<void> deleteCart(String cartId) async {
    final response = await http.delete(Uri.parse('$deleteCartUrl/$cartId'));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete cart');
    }
  }
}
