import 'package:currecny_converter_app/core/entities/currency_dto.dart';

abstract class ICurrencyRemoteDataSource {
  Future<List<CurrencyDTO>> getCurrencies();
  Future<void> deleteCurrency(double currencyId);
  Future<List<CurrencyDTO>> editCurrency();
  Future<List<CurrencyDTO>> getExchangeAmount();
  Future<List<CurrencyDTO>> getSavedCurrencies();
  Future<List<CurrencyDTO>> saveCurrency();
}
