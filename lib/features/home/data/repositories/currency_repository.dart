import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_local_data_source.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrencyRepository extends ICurrencyRepository {
  final ICurrencyRemoteDataSource remoteDataSource;
  final ICurrencyLocalDataSource localDataSource;
  CurrencyRepository(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, List<CurrencyDTO>>> getCurrencies() async {
    try {
      final currencies = await remoteDataSource.getCurrencies();
      return right(currencies);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Option<void>>> deleteCurrency(
      double currencyId) async {
    try {
      await localDataSource.deleteCurrency(currencyId);
      return right(none());
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CurrencyDTO>>> editCurrency() async {
    try {
      final updatedCurrencies = await localDataSource.editCurrency();
      return right(updatedCurrencies);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CurrencyDTO>>> getExchangeAmount() async {
    try {
      final exchangeAmounts = await remoteDataSource.getExchangeAmount();
      return right(exchangeAmounts);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CurrencyDTO>>> getSavedCurrencies() async {
    try {
      final savedCurrencies = await localDataSource.getSavedCurrencies();
      return right(savedCurrencies);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<CurrencyDTO>>> saveCurrency() async {
    try {
      final savedCurrencies = await localDataSource.saveCurrency();
      return right(savedCurrencies);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }
}
