import 'package:currecny_converter_app/core/entities/currency_dto.dart';
import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:currecny_converter_app/features/home/data/data_sources/i_currency_remote_data_source.dart';
import 'package:currecny_converter_app/features/home/domain/repositories/i_currency_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrencyRepository extends ICurrencyRepository {
  final ICurrencyRemoteDataSource remoteDataSource;

  CurrencyRepository({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CurrencyDTO>>> getCurrencies() async {
    try {
      final response = await remoteDataSource.getCurrencies();
      return right(response);
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Option<void>>> deleteCart(String cartId) async {
    try {
      await remoteDataSource.deleteCart(cartId);
      return right(none());
    } catch (e) {
      print(e);
      return left(ServerFailure());
    }
  }
}
