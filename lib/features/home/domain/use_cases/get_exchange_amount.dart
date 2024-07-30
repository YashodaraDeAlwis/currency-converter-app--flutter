import 'package:currecny_converter_app/core/abstracts/use_cases.dart';
import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetExchangeAmount extends UseCaseN<List<CurrencyDTO>> {
  final ICurrencyRepository repository;
  GetExchangeAmount(this.repository);
  @override
  Future<Either<Failure, List<CurrencyDTO>>> call() async {
    return repository.getExchangeAmount();
  }
}
