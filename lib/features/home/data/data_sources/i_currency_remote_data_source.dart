import 'package:currecny_converter_app/core/entities/currency_dto.dart';

abstract class ICurrencyRemoteDataSource {
  Future<List<CurrencyDTO>> getCurrencies();
  Future<List<CurrencyDTO>> getExchangeAmount();
}
