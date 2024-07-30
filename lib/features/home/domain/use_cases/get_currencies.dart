import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCurrenciesUseCase {
  final ICurrencyRepository repository;

  GetCurrenciesUseCase(this.repository);

  Future<Either<Failure, List<CurrencyDTO>>> execute() async {
    return await repository.getCurrencies();
  }
}
