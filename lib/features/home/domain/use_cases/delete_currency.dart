import 'package:currecny_converter_app/core/abstracts/use_cases.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteCurrency extends UseCase<Option<void>, double> {
  final ICurrencyRepository repository;

  DeleteCurrency(this.repository);

  @override
  Future<Either<Failure, Option<void>>> call(double currencyId) async {
    return repository.deleteCurrency(currencyId);
  }
}
