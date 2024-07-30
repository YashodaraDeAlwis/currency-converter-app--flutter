import 'package:currecny_converter_app/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

/// base use case with params
abstract class UseCase<T extends Object, P> {
  Future<Either<Failure, T>> call(P params);
}

/// use case that has no params
abstract class UseCaseN<T extends Object> {
  Future<Either<Failure, T>> call();
}
