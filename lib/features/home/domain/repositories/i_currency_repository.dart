import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';

import 'package:fpdart/fpdart.dart';

abstract class ICurrencyRepository {
  Future<Either<Failure, List<CurrencyDTO>>> getCurrencies();
  Future<Either<Failure, Option<void>>> deleteCurrency(double currencyId);
  Future<Either<Failure, List<CurrencyDTO>>> editCurrency();
  Future<Either<Failure, List<CurrencyDTO>>> getExchangeAmount();
  Future<Either<Failure, List<CurrencyDTO>>> getSavedCurrencies();
  Future<Either<Failure, List<CurrencyDTO>>> saveCurrency();
}
